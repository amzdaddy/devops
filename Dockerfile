FROM node

RUN mkdir /skillbox
COPY package.json /skillbox
WORKDIR /skillbox

RUN yarn install

COPY . /skillbox

RUN yarn test
RUN yarn build

CMD yarn start

# open port
EXPOSE 3000
