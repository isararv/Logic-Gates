FROM node:22-alpine
WORKDIR /app
COPY package.json server.cjs index.html ./
ENV NODE_ENV=production
ENV PORT=8765
EXPOSE 8765
USER node
CMD ["node", "server.cjs"]
