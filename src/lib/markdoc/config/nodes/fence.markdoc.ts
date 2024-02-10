import { component } from '@astrojs/markdoc/config';

export default {
  render: component('./src/components/CodeBlock.astro'),
  children: ['pre', 'code'],
  attributes: {
    content: {
      type: String,
    },
    language: {
      type: String,
    },
    mark: {
      type: String,
    },
    ins: {
      type: String,
    },
    del: {
      type: String,
    },
    meta: {
      type: String,
    },
  },
};
