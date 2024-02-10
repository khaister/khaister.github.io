import { component, Markdoc } from '@astrojs/markdoc/config';

function extractFirstLine(children: any[]) {
  if (!children || children.length === 0) {
    return [null, null];
  }
  const firstChild = children[0];
  if (firstChild?.attributes?.content) {
    const content = firstChild.attributes.content;
    const matches = content.match(/\[!(.*)\]/);
    let title = null;
    if (matches) {
      const variant = matches[1];
      title = content.replace(/\[!.*\]/, '').trim();
      firstChild.attributes.content = '';
      return [variant.toLowerCase(), title];
    }
  }
  return extractFirstLine(firstChild?.children);
}

export default {
  render: component('./src/components/Aside.astro'),
  attributes: {
    variant: {
      type: String,
    },
    title: {
      type: String,
    },
  },
  transform(node: any, config: any) {
    const [variant, title] = extractFirstLine(node.children);
    const attributes = node.transformAttributes(config);
    const children = node.transformChildren(config);
    attributes['variant'] = variant;
    attributes['title'] = title;
    return new Markdoc.Tag(
      node.findSchema(config).render,
      attributes,
      children
    );
  },
};
