import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: "content",
  schema: z.object({
    external: z.boolean().default(false),
    draft: z.boolean().default(false),
    featured: z.boolean().default(false),
    title: z.string({
      required_error: "Required frontmatter missing: title",
      invalid_type_error: "title must be a string",
    }),
    date: z.date({
      required_error: "Required frontmatter missing: date",
      invalid_type_error:
        "date must be written in yyyy-mm-dd format without quotes: For example, Jan 22, 2000 should be written as 2000-01-22.",
    }),
    description: z.string().optional(),
  })
});

export const collections = {
  "blog": blog,
}