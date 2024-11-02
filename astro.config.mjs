import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
    outDir: '/var/www/tymalik/html',
    markdown: {
        shikiConfig: {
            theme: 'kanagawa-wave',
        },
    },
});
