FROM golang:1.22.1

WORKDIR /go/src/app

COPY . .
RUN go mod download
RUN go build -o /go/bin/app/main cmd/main.go

EXPORT 3000

CMD ["/go/bin/app/main"]
