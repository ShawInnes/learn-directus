FROM directus/directus:latest

USER root
RUN corepack enable \
 && corepack prepare pnpm@8.9.0 --activate

USER node
RUN pnpm install directus-extension-fitconvert
