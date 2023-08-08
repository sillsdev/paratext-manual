import { IPlugin } from "@sillsdev/docu-notion";

// Sadly, this is easier than fixing the source in Notion.
// There is no find/replace, and export/import doesn't round-trip well.
export const stripNoBreakSpaces: IPlugin = {
  name: "StripNoBreakSpaces",
  regexMarkdownModifications: [
    {
      regex: /\u00A0/g, // no-break space
      replacementPattern: " " // regular space
    },
  ],
};
