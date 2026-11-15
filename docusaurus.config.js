
import { themes as prismThemes } from 'prism-react-renderer';

const config = {
  title: 'Reliability Simulation',
  tagline: 'Reliability Simulation Documentation',
  favicon: 'img/favicon.ico',
  url: 'https://ac40683299.github.io',
  baseUrl: '/reliability-simulation/',
  onBrokenLinks: 'warn',
  markdown: {
    hooks: {
      onBrokenMarkdownLinks: 'warn',
    },
  },
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },
  themes: [
    [
      require.resolve('@easyops-cn/docusaurus-search-local'),
      {
        hashed: true,
        indexDocs: true,
        indexBlog: false,
        docsRouteBasePath: '/',
        language: ['en'],
        highlightSearchTermsOnTargetPage: true,
        searchResultLimits: 8,
        searchBarShortcutHint: true,
      },
    ],
  ],
  presets: [
    [
      'classic',
      {
        docs: {
          routeBasePath: '/',
          sidebarPath: './sidebars.js',
          editUrl: 'https://github.com/ac40683299/reliability-simulation/edit/main/',
        },
        blog: false,
        theme: {
          customCss: './src/css/cosmos.css',
        },
      },
    ],
  ],
  themeConfig: {
    colorMode: {
      defaultMode: 'dark',
      respectPrefersColorScheme: false,
    },
    navbar: {
      hideOnScroll: false,
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'docs',
          position: 'left',
          label: 'Reliability Simulation',
        },
        {
          type: 'search',
          position: 'right',
        },
        {
          href: 'https://github.com/ac40683299/reliability-simulation',
          position: 'right',
          className: 'header-github-link',
          'aria-label': 'GitHub',
        },
      ],
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
      additionalLanguages: ['bash', 'json', 'typescript'],
    },
  },
};

export default config;
