This repo creates https://sillsdev.github.io/paratext-manual/.

The GitHub Action associated with this repo does these things:

1. uses [docu-notion](https://github.com/sillsdev/docu-notion) to grab content from Notion and convert it into Docusaurus-friendly markdown pages,
2. runs these through [Docusaurus](https://docusaurus.io/), and then
3. publishes the result to Github Pages [here](https://sillsdev.github.io/paratext-manual/).

## Building the Site

You'll need permissions, then do this:
![image](https://user-images.githubusercontent.com/8448/195942450-8cab4cf7-781e-4dd3-87b4-f9fdc58ce381.png)


## Testing Locally

1. Add PARATEXT_NOTION_ROOT_PAGE and PARATEXT_NOTION_INTEGRATION_TOKEN environment variables. See [docu-notion](https://github.com/sillsdev/docu-notion) for explanations of the root page id and integration token. As always, you may need to restart your terminal before it will see new environment variables.

2. `yarn && yarn pull && yarn start` should eventually open the site in a local browser (you'll need [yarn](https://classic.yarnpkg.com/lang/en/docs/install/#windows-stable)).

## Notes on the Docusaurus 3 / docu-notion 1.0 upgrade

A few decisions here are load-bearing and easy to undo by accident.

### We deliberately stay on the Docusaurus v2 markdown forms

docu-notion 1.0 emits Docusaurus **v3** markdown by default (`{/* #id */}` heading ids,
`:::warning[Caution]`). We opt out of that with `--docusaurus-v2` on `yarn pull`, and we
set all three `markdown.mdx1Compat` flags explicitly in `docusaurus.config.js`.

The reason is Crowdin, not Docusaurus. A heading's id is part of its Crowdin source string
-- you can see the proof in the translations, where a few translators have typed *past* the
id (a word appended after `{#…}`, a stray quote, `**` wrapped around it), which is only
possible if the id is inside the string they edit. So changing `## Heading {#abc}` to
`## Heading {/* #abc */}` changes ~331 source strings. `crowdin upload sources
--delete-obsolete` would purge the originals, the replacements would be untranslated, and
`crowdin download` exports untranslated strings as source -- i.e. **~331 headings would
revert to English on each of fr/es/pt/hi**. `crowdin:pretranslate` cannot rescue it; it is
`--translate-with-perfect-match-only` and the source no longer matches.

In exchange for that we get nothing functional: Docusaurus renders the v2 forms correctly
via `mdx1Compat`, and it does so at build time in `@docusaurus/mdx-loader`'s
`preprocessContent` (`escapeMarkdownHeadingIds` + `admonitionTitleToDirectiveLabel`).

**There is no deadline.** Docusaurus 4 does not remove `mdx1Compat`; it only flips the
default off, via `future.v4.mdx1CompatDisabledByDefault`. The flags resolve with `??=`, so
our explicit `true` values keep winning. That is exactly why they are written out in the
config rather than left implicit.

#### The one real cost of `--docusaurus-v2`: emoji callouts

`--docusaurus-v2` also restores docu-notion's legacy behavior for Notion callouts whose
emoji isn't one of the recognized six (ℹ️ 📝 💡 ❗ ⚠️ 🔥): it uses the **emoji itself** as
the admonition keyword. Confirmed against the docu-notion sample site -- the same callout
emits:

    --docusaurus-v2   ->  :::🚧          <- not a valid admonition; renders as literal text
    default (v3)      ->  :::note[🚧]    <- safe

Our content is clean today (only tip/caution/info/note/danger), so nothing is broken. But
this is a live trap: someone adds a Notion callout with an unusual emoji and that page
quietly breaks, in all five locales, with no build failure.

The right fix is upstream, in docu-notion: v2 mode should still fall back to `note` for an
unrecognized emoji. That raw-emoji passthrough was arguably always a bug, and it is the one
behavioral difference in v2 mode that isn't purely cosmetic. Failing that, a pre-build check
that rejects any `:::keyword` outside the known set would catch it.

### If someone adds a video in Notion, the build will fail

`react-player` is deliberately **not** a dependency, because nothing in the current content
uses it. But docu-notion's built-in video handling is not optional: for any Notion `video`
block it emits `import ReactPlayer from "react-player";` into the generated page
(`dist/plugins/VideoTransformer.js`). So the first video anyone adds in Notion will make
`yarn build` fail with an unresolvable import on a generated page, which is a confusing
symptom if you don't know to look here.

This is a **deliberate, accepted** trade-off: no videos are expected, and unlike the emoji
callout above this failure is *loud* — `release.yml` builds before it deploys, so a red CI run
blocks the deploy and the live site simply stays on the previous version. Nothing breaks in
public. (Note the pull commit and the Crowdin sync do complete first; only the deploy is
skipped.)

The fix, if it ever happens, is one line: add `react-player` back to `dependencies` (2.12.0
works with React 18 — that is what bloom-docs uses). Note `react-gif-player` is *not* in the
same boat: docu-notion never emits an import for it, so dropping that one carries no risk.

### Don't hand-roll a heading-id transform

It is tempting to script `{#id}` <-> `{/* #id */}` around the Crowdin upload/download so
that Crowdin keeps the old strings while the build sees the new ones. It does work
mechanically -- only `docs/` is uploaded as a source, and docu-notion's spacing is
consistent enough for a lossless round trip. Don't. It reimplements `mdx1Compat` for
byte-identical output, adds a CI ordering constraint, needs try/finally so a failed upload
doesn't leave `docs/` half-converted right before the auto-commit step, and permanently
desyncs Crowdin's copy of the content from the repo's.

### Three legacy forms in the content

- `{#id}` heading ids -- in `docs/` (from `--docusaurus-v2`) and in `i18n/`.
- `:::caution` -- still a valid v3 keyword. Leave bare ones alone: Docusaurus supplies a
  localized title from its own translations (fr "attention"), which an explicit
  `:::warning[Caution]` label would replace with hardcoded English on every locale.
- **`:::info Some Title`** -- the v2 space-separated admonition title (v3 writes
  `:::info[Some Title]`). ~17 of these are **hand-typed as literal text inside Notion**, so
  every `yarn pull` regenerates them and they can only be fixed at the Notion source.
  Worth doing as hygiene sometime; not a prerequisite for anything.

### `scripts/migrate-i18n-to-docusaurus-v3.cjs` is parked, not wired up

`yarn migrate-i18n-to-v3` converts `i18n/` heading ids to the v3 MDX-comment form. It is
idempotent, heading-ids-only, and touches local files only -- it does **not** talk to
Crowdin. It is unused today. If we ever do migrate deliberately, it also needs a
`crowdin upload translations` step (which no script here has) so Crowdin holds translations
matching the new sources. Do a `crowdin upload sources --dryrun` first.

### `tsconfig.json`'s `extends` must stay a relative path

See the comment in that file -- a bare specifier makes `yarn pull` fail outright.

**Keep `@easyops-cn/docusaurus-search-local` below 0.55.** 0.55.0+ adds a required
`open-ask-ai` peer dependency.

**The `resolutions` block keeps us on exactly one Docusaurus.** search-local declares its
Docusaurus deps as `"^2 || ^3"`, so against our exact `3.10.1` pins yarn happily resolved a
whole second tree (14 packages at 3.10.2, physically installed under
`node_modules/@easyops-cn/docusaurus-search-local/node_modules/@docusaurus/`). That duplicates
client bundle code, and since the search theme imports `@docusaurus/plugin-content-docs/client`
and `@docusaurus/theme-common` it is exactly the setup that produces "hook used outside
provider" errors once the two versions drift. The `resolutions` entries force one tree. If you
bump Docusaurus, bump those versions too, or the pin will silently hold the old one.

**`yarn pull` uses the pinned docu-notion**, not `npx @sillsdev/docu-notion`. An unpinned
`npx` silently follows npm's `latest` tag, which means a docu-notion release can change our
generated markdown with no commit in this repo.

The `--silent` in that script is load-bearing. Plain `yarn <bin>` echoes the *resolved*
command line, which prints the Notion integration token in plain text; GitHub Actions masks
registered secrets, but a local terminal (or a scrollback, or a screen share) does not.
`--silent` suppresses that echo while still letting docu-notion's own output through -- and
going through the declared bin means we aren't hard-coding docu-notion's internal
`dist/index.js` path, which would break with a bare `MODULE_NOT_FOUND` if a release moved it.
