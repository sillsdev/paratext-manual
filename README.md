This repo creates https://sillsdev.github.io/paratext-manual/.

The GitHub Action associated with this repo does these things:

1. uses [docu-notion](https://github.com/sillsdev/docu-notion) to grab content from Notion and convert it into Docusaurus-friendly markdown pages,
2. runs these through [Docusaurus](https://docusaurus.io/), and then
3. publishes the result to Github Pages [here](https://sillsdev.github.io/paratext-manual/).

## Testing Locally

1. Add PARATEXT_NOTION_ROOT_PAGE and PARATEXT_NOTION_INTEGRATION_TOKEN environment variables. See [docu-notion](https://github.com/sillsdev/docu-notion) for explanations of the root page id and integration token. As always, you may need to restart your terminal before it will see new environment variables.

2. `yarn && yarn pull && yarn start` should eventually open the site in a local browser (you'll need [yarn](https://classic.yarnpkg.com/lang/en/docs/install/#windows-stable)).
