FROM jimmychiang/beego:latest
MAINTAINER JimmyChiang

ENV PATH=$PATH:$GOPATH/bin

WORKDIR $GOPATH/src

RUN go get -u github.com/beego/i18n

RUN git config --global http.postBuffer 524288000
RUN git config --list
RUN git clone  https://jimmychiang:jk19890209@git.oschina.net/Jimmychiang/haitaoinv.git

WORKDIR haitaoinv


EXPOSE  8080

CMD bee run
