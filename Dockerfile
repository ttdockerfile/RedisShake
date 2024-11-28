FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o redis-shake ./cmd/redis-shake

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/redis-shake .