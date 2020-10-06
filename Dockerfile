FROM node:latest

ARG VERSION=2.5.4
ARG PORT=3000

RUN apt-get update
RUN apt-get install -y ffmpeg imagemagick git
RUN git clone --branch ${VERSION} https://github.com/colloqi/pisignage-server /usr/src/app

WORKDIR /usr/src/app
RUN npm install
COPY config.js config/env/docker.js

ENV NODE_ENV docker
ENV PORT ${PORT}
EXPOSE ${PORT}

VOLUME /media
CMD ["node", "server.js"]
