import type * as Preset from '@docusaurus/preset-classic';
import type { Config } from '@docusaurus/types';
import { themes as prismThemes } from 'prism-react-renderer';

const config: Config = {
  title: 'Khai',
  tagline: '',
  favicon: '/favicon.ico',

  url: 'https://khaister.github.io',
  baseUrl: '/',

  organizationName: 'khaister',
  projectName: 'khaister.github.io',

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
        },
        blog: {
          showReadingTime: true,
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    // TODO: Replace with your project's social card
    // image: 'img/docusaurus-social-card.jpg',
    headTags: [
      {
        tagName: 'link',
        attributes: {
          href: 'https://cdn.jsdelivr.net/gh/eliyantosarage/font-awesome-pro@main/fontawesome-pro-6.5.1-web/css/all.min.css',
          rel: 'stylesheet',
        },
      },
    ],
    colorMode: {
      defaultMode: 'light',
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'Khai',
      // TODO: Replace with your project's logo
      // logo: {
      //   alt: 'Khai Logo',
      //   src: 'img/logo.svg',
      // },
      items: [
        // TODO: Add docs, blog, and about links
        // {
        //   type: 'docSidebar',
        //   sidebarId: 'wikiSidebar',
        //   position: 'left',
        //   label: 'Docs',
        // },
        // { to: '/blog', label: 'Blog', position: 'left' },
        // { to: '/about', label: 'About', position: 'left' },
        {
          to: 'https://github.com/khaister',
          position: 'right',
          label: ' ',
          className: 'header-github-link group',
        },
      ],
    },
    footer: {
      style: 'light',
      links: [],
      copyright: `Copyright © ${new Date().getFullYear()}. Built with Docusaurus.`,
    },
    prism: {
      additionalLanguages: [],
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
