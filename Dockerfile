FROM node:18.16.0 as build
ARG REACT_APP_TG_API_ID
ARG REACT_APP_TG_API_HASH

COPY . .

RUN yarn cache clean
RUN yarn install
RUN yarn workspaces run build
