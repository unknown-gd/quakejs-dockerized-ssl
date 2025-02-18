FROM node:12-alpine

RUN apk add --no-cache git jq

WORKDIR /app
RUN git clone https://github.com/unknown-gd/quakejs .
RUN npm install

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +rx /app/entrypoint.sh

ENV Q3JS_WSS_PROXY_ADDRESS=127.0.0.1
ENV Q3JS_WSS_PROXY_PORT=27960
ENV Q3JS_WSS_PORT=27961

EXPOSE 27961 27962 27963 27964

CMD [ "sh", "/app/entrypoint.sh" ]
