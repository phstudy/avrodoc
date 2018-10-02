FROM node:8-slim

WORKDIR avrodoc
COPY . /avrodoc

ENV PORT 8124
ENV SCHEMA_DIR /avrodoc/schemata

EXPOSE 8124
VOLUMES /avrodoc/schemata

RUN ln -s /avrodoc/bin/avrodoc /usr/local/bin && npm update