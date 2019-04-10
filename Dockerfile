FROM alpine:3.8

WORKDIR /app

RUN apk add --no-cache curl

COPY start.sh .

ENV SRC_URL "http://ingress/metrics"
ENV DST_URL "https://span/v1/metrics"
ENV API_KEY "token"

CMD ["./start.sh"]
