FROM golang:alpine
MAINTAINER jimmychiang

ENV GOPATH  /go

RUN apk update
RUN apk add --no-cache git

RUN go get github.com/astaxie/beego 
RUN go get github.com/beego/bee

WORKDIR $GOPATH/src


