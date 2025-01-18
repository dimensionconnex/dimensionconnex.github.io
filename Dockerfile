FROM node:23.5.0-alpine3.21

LABEL maintainer="dimensionconnex@gmail.com"
LABEL version="dimensionconnex:v1"
LABEL description="Docker image for dimensionconnex"

WORKDIR /workspace
COPY package.json package-lock.json yarn.lock /workspace/

RUN npm install hexo-cli -g && \
    npm ci

COPY . /workspace

RUN  npm run clean && npm run build

CMD [ "npm", "run", "server"]
# docker build -t dimensionconnex .
# docker compose up -d