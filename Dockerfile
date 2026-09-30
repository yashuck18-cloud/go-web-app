# ---------- Stage 1: Build ----------
FROM golang:1.22 AS builder

WORKDIR /app

COPY go.mod ./
COPY . .

RUN CGO_ENABLED=0 go build -o main .


# ---------- Stage 2: Runtime ----------
FROM alpine:3.22

WORKDIR /app

COPY --from=builder /app/main .
COPY --from=builder /app/static ./static

EXPOSE 8080

CMD ["./main"]