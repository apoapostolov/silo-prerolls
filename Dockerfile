FROM golang:1.26 AS builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o silo-prerolls .

FROM alpine:3.19
RUN apk --no-cache add ca-certificates
COPY --from=builder /app/silo-prerolls /usr/local/bin/silo-prerolls
ENTRYPOINT ["/usr/local/bin/silo-prerolls"]