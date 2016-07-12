FROM jimmychiang/beego:latest
MAINTAINER JimmyChiang


WORKDIR $GOPATH/src
RUN pwd
RUN mkdir GW/

WORKDIR GW/

RUN git config --global http.postBuffer 524288000
RUN git config --list
RUN git clone https://git.oschina.net/Jimmychiang/gw_tools_api.git

WORKDIR gw_tools_api/
RUN pwd

EXPOSE 1688

ENV PATH=$PATH:$GOPATH/bin

RUN echo $PATH

CMD bee run
