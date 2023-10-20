import { defineCollection, z } from 'astro:content';
const posts = defineCollection({
  type: 'content',
  schema: z.object({
    edition: z.number(),
    type: z.string(),
    title: z.string(),
    description: z.string(),
    tags: z.array(z.string()),
    publishedAt: z.date(),
    updatedAt: z.date(),
  })
});
export const collections = {
  posts
};
