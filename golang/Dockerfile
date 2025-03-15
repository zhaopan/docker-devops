ARG GO_VERSION=latest

FROM golang:${GO_VERSION} AS builder

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

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN apk update --no-cache \
    && apk add --no-cache ca-certificates tzdata
COPY --from=builder /usr/share/zoneinfo/$TZ /usr/share/zoneinfo/$TZ

WORKDIR /app

COPY --from=builder /app/main /app/main

CMD ["./main"]
