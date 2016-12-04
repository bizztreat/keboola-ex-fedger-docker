# VERSION 1.2.0
FROM radektomasek/keboola-base-node
MAINTAINER Radek Tomasek <radek.tomasek@gmail.com>

WORKDIR /home

RUN git clone https://github.com/bizztreat/keboola-ex-fedger ./ && git checkout tags/1.2.0 && npm install

ENTRYPOINT node_modules/.bin/babel-node --presets es2015,stage-0 ./src/index.js --data=/data
