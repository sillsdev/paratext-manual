// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require("prism-react-renderer/themes/github");
const darkCodeTheme = require("prism-react-renderer/themes/dracula");

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: "Paratext Manual",
  tagline: "",
  url: "https://sillsdev.github.io",
  baseUrl: "/paratext-manual/",
  onBrokenLinks: "warn",
  onBrokenMarkdownLinks: "warn",
  // Duplicate routes cause the next/prev buttons to loop
  // which causes the pdf creation to loop forever.
  onDuplicateRoutes: "throw",
  favicon: "img/Paratext_Icon-48px.ico",

  organizationName: "sillsdev", // Usually your GitHub org/user name.
  projectName: "paratext-manual", // Usually your repo name.
  deploymentBranch: "gh-pages",

  presets: [
    [
      "classic",
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          routeBasePath: "/", // Serve the docs at the site's root
          sidebarPath: undefined, //  `undefined` to create a fully autogenerated sidebar.
        },
        blog: false,
        theme: {
          customCss: [
            require.resolve("./src/css/custom.css"),
            require.resolve(
              "./src/css/gifplayer.css"
              //"./node_modules/react-gif-player/dist/gifplayer.css" // this gave a big red compile warning which is seaming unrelated "  Replace Autoprefixer browsers option to Browserslist config..."
            ),
          ],
        },
        sitemap: {
          // https://www.sitemaps.org/protocol.html#xmlTagDefinitions
          changefreq: "weekly",
          priority: 0.5,
          ignorePatterns: [],
        }
       }),
    ],
  ],
  i18n: {
    defaultLocale: "en",
    locales: ["en", "fr", "es", "pt"],
    localeConfigs: {
      en: {
        label: "English",
        direction: "ltr",
        htmlLang: "en-US",
        calendar: "gregory",
      },
      fr: {
        label: "français",
        direction: "ltr",
        htmlLang: "fr",
        calendar: "gregory",
      },
      es: {
        label: "español",
        direction: "ltr",
        htmlLang: "es",
        calendar: "gregory",
      },
    },
  },
  themes: [
    // ... Your other themes.
    [
      require.resolve("@easyops-cn/docusaurus-search-local"),
      {
        // ... Your options.
        // `hashed` is recommended as long-term-cache of index file is possible.
        hashed: true,
        language: ["en", "fr", "es", "pt"],
        indexBlog: false,
        indexPages: true,
        docsRouteBasePath: "/",
      },
    ],
  ],
  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      metadata: [
        {
          name: "keywords",
          content: "Paratext, documentation, help, manual, training",
        },
      ],
      sitemap: {
        // https://www.sitemaps.org/protocol.html#xmlTagDefinitions
        changefreq: "weekly",
        priority: 0.5,
        ignorePatterns: [],
      },
      navbar: {
        title: "Paratext Manual",
        logo: {
          alt: "Logo",
          src: "img/logo.svg",
        },

        items: [
          {
            type: "localeDropdown",
            position: "right",
          },
        ],
      },

      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;