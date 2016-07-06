FROM golang:latest
MAINTAINER JimmyChiang
## Set the ENV
ENV GOPATH /go
## Install the git
RUN apt-get update & apt-get install -y  git
#RUN apk --update add git && rm -rf /var/cache/apk/*
#RUN apk --update add gcc

## Download the Source Package
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego

# RUN go get -u github.com/astaxie/beego/orm \
#  && go get -u github.com/astaxie/beego/logs \
#  && go get -u github.com/astaxie/beego/httplib \
#  && go get -u github.com/astaxie/beego/config \
#  && go get -u github.com/tealeg/xlsx \
#  && go get -u github.com/go-sql-driver/mysql \
#  && go get -u github.com/Unknwon/goconfig \
#  && go get -u github.com/qiniu/iconv
#
## Change the Workplace
WORKDIR $GOPATH/src
