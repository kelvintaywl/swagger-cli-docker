FROM node:10-alpine AS build-env

WORKDIR /tmp/swagger-cli-docker
COPY package.json yarn.lock ./
RUN yarn install --production -s


FROM node:10-alpine

COPY --from=build-env /tmp/swagger-cli-docker/node_modules /var/www/swagger-cli-docker/node_modules
WORKDIR /var/www/swagger-cli-docker/
USER node
ENTRYPOINT ["node_modules/.bin/swagger-cli"]
CMD ["--help"]
