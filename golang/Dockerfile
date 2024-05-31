ARG VERSION
ARG ZP_MAINTAINER

FROM golang:${VERSION} AS builder

ARG ZP_MAINTAINER

LABEL stage=gobuilder

ENV CGO_ENABLED 0
ENV GOPROXY https://goproxy.cn,direct

WORKDIR /build

ADD go.mod .
ADD go.sum .
RUN go mod download
COPY . .
RUN go build -ldflags="-s -w" -o /app/main ./main.go

FROM alpine

LABEL maintainer=${ZP_MAINTAINER}

RUN apk update --no-cache && apk add --no-cache ca-certificates tzdata
COPY --from=builder /usr/share/zoneinfo/$TZ /usr/share/zoneinfo/$TZ
ENV TZ $TZ
WORKDIR /app

COPY --from=builder /app/main /app/main

CMD ["./main"]
