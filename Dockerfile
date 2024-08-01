FROM golang:1.22.3
ENV PORT 80
EXPOSE 80

WORKDIR /go/src/app
COPY . .

RUN go mod vendor
RUN go build -v -o app
RUN mv ./app /go/bin/

CMD ["app"]