FROM node:18.16.0
ARG REACT_APP_TG_API_ID
ARG REACT_APP_TG_API_HASH

COPY . .

WORKDIR /apps

RUN apt-get install build-essential -y
RUN yarn cache clean
RUN yarn install
RUN yarn workspaces run build
