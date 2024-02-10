import { component, defineMarkdocConfig } from "@astrojs/markdoc/config";

export default defineMarkdocConfig({
  tags: {
    aside: {
      render: component("./src/components/Aside.astro"),
      attributes: {
        // Markdoc requires type defs for each attribute.
        // These should mirror the `Props` type of the component
        // you are rendering.
        // See Markdoc's documentation on defining attributes
        // https://markdoc.dev/docs/attributes#defining-attributes
        type: { type: String },
      },
    },
  },
  nodes: {
    fence: {
      render: component("./src/components/CodeBlock.astro"),
      children: ['pre', 'code'],
      attributes: {
        content: {
          type: String
        },
        language: {
          type: String
        },
        mark: {
          type: String
        },
        ins: {
          type: String
        },
        del: {
          type: String
        },
        meta: {
          type: String
        }
      }
    },
  },
});
