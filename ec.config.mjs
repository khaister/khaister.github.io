import { pluginCollapsibleSections } from '@expressive-code/plugin-collapsible-sections';
import { defineEcConfig } from 'astro-expressive-code';

export default defineEcConfig({
  themes: ['github-dark', 'github-light'],
  useThemedSelectionColors: true,
  styleOverrides: {
    codeFontFamily: 'Iosevka, monospace',
    frames: {
      shadowColor: null,
      editorActiveTabIndicatorTopColor: null,
    },
  },
  plugins: [pluginCollapsibleSections()],
});
