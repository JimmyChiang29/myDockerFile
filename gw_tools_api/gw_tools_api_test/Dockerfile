FROM jimmychiang/beego:latest
MAINTAINER JimmyChiang


WORKDIR $GOPATH/src
RUN pwd
RUN mkdir GW/

WORKDIR GW/

RUN git config --global http.postBuffer 524288000
RUN git config --list
RUN git clone -b test https://jimmychiang:jk19890209@git.oschina.net/Jimmychiang/gw_tools_api.git

WORKDIR gw_tools_api/
RUN pwd

EXPOSE 16881

ENV PATH=$PATH:$GOPATH/bin

RUN echo $PATH

CMD bee run
