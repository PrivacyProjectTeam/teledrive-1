FROM node:18.16.0 as build
ARG REACT_APP_TG_API_ID
ARG REACT_APP_TG_API_HASH

COPY . .

WORKDIR /apps

COPY yarn.lock .
COPY package.json .
COPY docker/.env .
RUN yarn cache clean
RUN yarn install --network-timeout 1000000
RUN yarn workspaces run build
