FROM docker.n8n.io/n8nio/n8n

USER root
RUN apk add --no-cache poppler-utils

RUN apk add --no-cache \
  chromium \
  nss \
  freetype \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  su-exec

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=false
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npm install -g puppeteer n8n && \
  npm cache clean --force

USER node
