FROM node:12-alpine

RUN apk add --no-cache git jq

WORKDIR /app
RUN git clone https://github.com/unknown-gd/quakejs.git .
RUN npm install

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +rx /app/entrypoint.sh

EXPOSE 80 443

CMD [ "sh", "/app/entrypoint.sh" ]
