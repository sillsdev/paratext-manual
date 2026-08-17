#!/usr/bin/env node

"use strict";

/**
 * ONE-TIME MIGRATION (plus a safety net for stale Crowdin downloads).
 *
 * Rewrites docu-notion-generated Markdown from the Docusaurus v2 forms to the
 * Docusaurus v3 forms that @sillsdev/docu-notion >= 1.0.0-alpha.7 emits:
 *
 *   - explicit heading ids:  ## Heading {#abc123}
 *     -> MDX comment form:   ## Heading {(slash-star) #abc123 (star-slash)}
 *
 * Heading ids only. See the note further down about why `:::caution` is left alone.
 *
 * We run this over `i18n/` rather than `docs/`: docu-notion regenerates `docs/`
 * in the new form on every pull, but the translations are downloaded from
 * Crowdin and keep the old form until they are retranslated. Migrating them
 * locally keeps every locale on one syntax and lets us eventually turn off
 * `markdown.mdx1Compat` in docusaurus.config.js (required before Docusaurus v4).
 *
 * Adapted from bloom-docs' scripts/temporary-docu-notion-docusaurus-v3-shim.cjs.
 *
 * The transform is line-based, skips fenced code blocks, and is idempotent:
 * running it twice is a no-op, so it is safe to leave wired up after the
 * migration lands.
 *
 * Usage:
 *   node scripts/migrate-i18n-to-docusaurus-v3.cjs [path] [--check]
 *
 *   path      file or directory to walk (default: "i18n")
 *   --check   report what would change without writing anything
 *
 * This script deliberately touches only local files. It does NOT talk to
 * Crowdin. Uploading the migrated translations is a separate, manual step --
 * see the upgrade notes in README.md.
 */

const fs = require("fs");
const path = require("path");

const args = process.argv.slice(2);
const checkOnly = args.includes("--check");
const targetInput = args.find(arg => !arg.startsWith("--")) || "i18n";
const targetPath = path.resolve(process.cwd(), targetInput);

function collectMarkdownFiles(entryPath, results = []) {
  if (!fs.existsSync(entryPath)) {
    return results;
  }

  if (fs.statSync(entryPath).isFile()) {
    if (entryPath.endsWith(".md")) {
      results.push(entryPath);
    }
    return results;
  }

  for (const dirent of fs.readdirSync(entryPath, { withFileTypes: true })) {
    const childPath = path.join(entryPath, dirent.name);
    if (dirent.isDirectory()) {
      collectMarkdownFiles(childPath, results);
    } else if (dirent.isFile() && childPath.endsWith(".md")) {
      results.push(childPath);
    }
  }

  return results;
}

function transformMarkdown(sourceText) {
  const eol = sourceText.includes("\r\n") ? "\r\n" : "\n";
  const lines = sourceText.split(/\r?\n/);
  const output = [];
  const counts = { headingIds: 0 };

  let activeFence = null;

  for (const line of lines) {
    // Track fenced code blocks so we never rewrite anything inside one.
    const fenceMatch = line.match(/^([ \t]*)(`{3,}|~{3,})/);
    if (fenceMatch) {
      const marker = fenceMatch[2][0];
      const length = fenceMatch[2].length;

      if (!activeFence) {
        activeFence = { marker, length };
      } else if (activeFence.marker === marker && length >= activeFence.length) {
        activeFence = null;
      }

      output.push(line);
      continue;
    }

    if (activeFence) {
      output.push(line);
      continue;
    }

    // NOTE: we deliberately do NOT rewrite `:::caution` to `:::warning[Caution]`
    // in the translations, even though that is what docu-notion emits for English.
    // A bare `:::caution` gets its title from Docusaurus' own theme translations
    // (`theme.admonition.caution`), so French renders "attention", Spanish
    // "precaución", and so on. Writing an explicit `[Caution]` label overrides that
    // with hardcoded English on every localized page. `caution` is still a valid
    // v3 admonition keyword, so there is nothing to fix here.

    // ## Heading {#id} -> ## Heading {(slash-star) #id (star-slash)}
    // Already-migrated headings end in `*/}` and cannot match this, which is
    // what makes the script idempotent.
    //
    // The `{#id}` must be at end of line, and the whitespace before it is
    // optional -- both to mirror Docusaurus' own parser, whose classic-syntax
    // regex is /\s*\{#(?<id>...)\}$/ (see parseMarkdownHeadingId in
    // @docusaurus/utils). Some translated headings have no space before the
    // brace (e.g. `### करें{#abc}`) and Docusaurus honors those, so we must too.
    // Conversely, anything with trailing text after the `}` is NOT a heading id
    // to Docusaurus, so we deliberately leave those alone for a human.
    const headingMatch = line.match(
      /^(\s{0,3}#{1,6}\s+.*?)[ \t]*\{#([A-Za-z0-9:_-]+)\}([ \t]*)$/
    );
    if (headingMatch) {
      counts.headingIds += 1;
      output.push(
        `${headingMatch[1]} {/* #${headingMatch[2]} */}${headingMatch[3]}`
      );
      continue;
    }

    output.push(line);
  }

  return { text: output.join(eol), counts };
}

if (!fs.existsSync(targetPath)) {
  console.log(
    `[migrate-i18n-to-docusaurus-v3] Skipping missing path: ${targetInput}`
  );
  process.exit(0);
}

const markdownFiles = collectMarkdownFiles(targetPath);
const totals = { filesChanged: 0, headingIds: 0 };

for (const filePath of markdownFiles) {
  const originalText = fs.readFileSync(filePath, "utf8");
  const transformed = transformMarkdown(originalText);

  if (transformed.text === originalText) {
    continue;
  }

  totals.filesChanged += 1;
  totals.headingIds += transformed.counts.headingIds;

  if (!checkOnly) {
    fs.writeFileSync(filePath, transformed.text, "utf8");
  }
}

if (totals.filesChanged === 0) {
  console.log(
    `[migrate-i18n-to-docusaurus-v3] No legacy Docusaurus v2 syntax found in ${targetInput}.`
  );
  process.exit(0);
}

console.log(
  `[migrate-i18n-to-docusaurus-v3] ${
    checkOnly ? "Would update" : "Updated"
  } ${totals.filesChanged} files in ${targetInput} (${
    totals.headingIds
  } heading ids).`
);
