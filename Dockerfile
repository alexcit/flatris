FROM node:14-alpine

RUN mkdir /skillbox
COPY package.json /skillbox
WORKDIR /skillbox
RUN yarn install

COPY . /skillbox
RUN yarn test
RUN yarn build
EXPOSE 3000
CMD yarn start


