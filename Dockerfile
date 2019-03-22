FROM alpine:latest
RUN apk -v --update add --no-cache\
        bash \
        curl \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        git \
        musl-dev \
        go \
        && \
    pip install --upgrade awscli s3cmd python-magic && \
    go get -u github.com/wallix/awless && \
    ln -s /root/go/bin/awless /usr/bin && \
    apk -v --purge del py-pip go gcc musl-dev && \
    rm -fr /root/go/src && \
    rm -fr /root/.cache
VOLUME /root/.aws
WORKDIR /root

