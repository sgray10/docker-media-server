FROM sgray10/golang
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qy update && \ 
    apt-get -qy install docker.io && \
    mkdir -p /go/src
ADD ./docker-spy /go/src/docker-spy
CMD cd /go/src/docker-spy && \ 
    CGO_ENABLED=0 go get -a -ldflags '-s' . && \
    cp /go/bin/docker-spy /go/src/docker-spy && \
    docker build -t sgray10/dns2 .
