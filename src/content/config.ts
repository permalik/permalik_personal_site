import { defineCollection, z } from 'astro:content';
const posts = defineCollection({
  type: 'content',
  schema: z.object({
    type: z.string(),
    title: z.string(),
    description: z.string(),
    tags: z.array(z.string()),
    publishedAt: z.string().transform((str) => new Date(str)),
    updatedAt: z.string().transform((str) => new Date(str)),
    sources: z.array(z.string()),
  })
});
export const collections = {
  posts
};
