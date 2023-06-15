FROM golang:1-alpine3.18

WORKDIR /go/src/snyk-onboard
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

RUN mkdir /repos && chmod 777 /repos

CMD ["snyk-onboard"]
