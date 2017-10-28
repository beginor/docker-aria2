FROM alpine:latest

LABEL maintainer="beginor <beginor@qq.com>"

RUN apk add --no-cache --update aria2 git && \
    mkdir -p /aria2 && \
    git clone --depth=1 https://github.com/ziahamza/webui-aria2.git /aria2/webui && \
    rm -rf /aria2/webui/.git && \
    apk del git

COPY ["aria2.conf", "entry-point.sh", "/aria2/"]

EXPOSE 6800 6880

VOLUME [ "/aria2/downloads" ]

ENTRYPOINT [ "/aria2/entry-point.sh" ]
