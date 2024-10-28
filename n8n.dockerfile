FROM docker.n8n.io/n8nio/n8n

USER root
RUN apt-get update && apt-get install -y poppler-utils && apt-get clean
USER node