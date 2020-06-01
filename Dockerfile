FROM node:12-alpine

RUN npm i -g log.io log.io-file-input && rm -rf /root/.npm

COPY entrypoint.sh config.json /

ENTRYPOINT ["/entrypoint.sh"]