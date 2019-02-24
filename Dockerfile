FROM golang:1.9

WORKDIR $GOPATH/src/github.com/hongsongp97/golang-mongodb
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 80

CMD ["golang-mongodb"]