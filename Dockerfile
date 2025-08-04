FROM golang:alpine AS builder

RUN apk --no-cache add upx

WORKDIR /app

COPY go.mod .
COPY main.go .

RUN CGO_ENABLED=0 go build -ldflags="-s -w" -trimpath -o fullcycle-uncompressed && \
    upx --best --ultra-brute -o fullcycle fullcycle-uncompressed

FROM scratch

COPY --from=builder /app/fullcycle /fullcycle

ENTRYPOINT ["/fullcycle"]
