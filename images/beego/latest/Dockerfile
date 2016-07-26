FROM golang:latest
MAINTAINER JimmyChiang
## Set the ENV
ENV GOPATH /go
## Install the git
RUN apt-get update & apt-get install -y  git

## Download the Source Package
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego

## Change the Workplace
WORKDIR $GOPATH/src
