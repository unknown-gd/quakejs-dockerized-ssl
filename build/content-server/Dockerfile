FROM node:12-alpine

RUN apk add --no-cache git bash jq

WORKDIR /app
RUN git clone https://github.com/unknown-gd/quakejs .
RUN mkdir assets && npm install

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +rx /app/entrypoint.sh

EXPOSE 9000

CMD [ "sh", "/app/entrypoint.sh" ]
