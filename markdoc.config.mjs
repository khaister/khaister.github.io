import { defineMarkdocConfig, nodes, component } from '@astrojs/markdoc/config';
import shiki from '@astrojs/markdoc/shiki';

export default defineMarkdocConfig({
  tags: {
    details: {
      render: "details",
      children: nodes.document.children,
    },
    summary: {
      render: "summary",
      children: nodes.document.children,
    },
    sup: {
      render: "sup",
      children: nodes.strong.children,
    },
    sub: {
      render: "sub",
      children: nodes.strong.children,
    },
    abbr: {
      render: "abbr",
      attributes: {
        title: { type: String },
      },
      children: nodes.strong.children,
    },
    kbd: {
      render: "kbd",
      children: nodes.strong.children,
    },
    mark: {
      render: "mark",
      children: nodes.strong.children,
    },
    youtube: {
      render: component("./src/components/YouTubeEmbed.astro"),
      attributes: {
        url: { type: String, required: true },
        label: { type: String, required: true },
      },
      selfClosing: true,
    },
    tweet: {
      render: component("./src/components/TweetEmbed.astro"),
      attributes: {
        url: { type: String, required: true },
      },
      selfClosing: true,
    },
    // codepen: {
    //   render: "CodePenEmbed",
    //   attributes: {
    //     url: { type: String, required: true },
    //     title: { type: String, required: true },
    //   },
    //   selfClosing: true,
    // },
    // githubgist: {
    //   render: "GitHubGistEmbed",
    //   attributes: {
    //     id: { type: String, required: true },
    //   },
    //   selfClosing: true,
    // },
  },
  nodes: {
    // heading: {
    //   render: component("./src/components/Heading.astro"),
    //   attributes: {
    //     level: { type: Number, required: true },
    //   },
    //   transform(node, config) {
    //     const attributes = node.transformAttributes(config);
    //     const children = node.transformChildren(config);
    //     return new Tag(this.render, { ...attributes }, children);
    //   },
    // },
    // if you want to customise default tags, this is where you'd do it
    // after adding the code here, add an Astro component for this node
    // in Renderer.astro component
    // paragraph: {
    //   render: "paragraph",
    //   transform(node, config) {
    //     const attributes = node.transformAttributes(config);
    //     const children = node.transformChildren(config);
    //     return new Tag(this.render, { ...attributes }, children);
    //   },
    // },
    // fence: {
    //   render: "CodeBlock",
    //   attributes: {
    //     content: { type: String, render: false, required: true },
    //     language: { type: String, default: "typescript" },
    //     // process determines whether or not markdoc processes tags inside the content of the code block
    //     process: { type: Boolean, render: false, default: false },
    //   },
    //   transform(node, config) {
    //     const attributes = node.transformAttributes(config);
    //     const children = node.transformChildren(config);
    //     if (children.some((child) => typeof child !== "string")) {
    //       throw new Error(
    //         `unexpected non-string child of code block from ${
    //           node.location?.file ?? "(unknown file)"
    //         }:${node.location?.start.line ?? "(unknown line)"}`
    //       );
    //     }
    //     return new Tag(
    //       this.render,
    //       { ...attributes, content: children.join("") },
    //       []
    //     );
    //   },
    // },
  },
  extends: [
    shiki({
      // Choose from Shiki's built-in themes (or add your own)
      // Default: 'github-dark'
      // https://github.com/shikijs/shiki/blob/main/docs/themes.md
      theme:'dracula',
      // Enable word wrap to prevent horizontal scrolling
      // Default: false
      wrap: true,
      // Pass custom languages
      // Note: Shiki has countless langs built-in, including `.astro`!
      // https://github.com/shikijs/shiki/blob/main/docs/languages.md
      langs: [],
    }),
  ],
});