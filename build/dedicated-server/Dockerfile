FROM node:12-alpine

RUN apk add --no-cache git

WORKDIR /app
RUN git clone https://github.com/unknown-gd/quakejs.git .
RUN git submodule update --init && npm install

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +rx /app/entrypoint.sh

ENV Q3JS_DOMAIN=content.quakejs.com
ENV Q3JS_SERVER_GAMEMODE=baseq3
ENV Q3JS_SERVER_DEDICATED=1

EXPOSE 27960

CMD [ "sh", "/app/entrypoint.sh" ]
