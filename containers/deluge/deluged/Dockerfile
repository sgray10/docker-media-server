FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
ENV DNS_PUBLISH_NAME_1 www.deluge.void:172.17.42.1
RUN apt-get -q update
RUN apt-get install -qy --force-yes tree software-properties-common 
RUN add-apt-repository ppa:deluge-team/ppa
RUN apt-get install -qy --force-yes deluged
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*
VOLUME /config
VOLUME /data
VOLUME /data2
ADD ./start.sh /start.sh
RUN chmod u+x /start.sh
EXPOSE 8112
EXPOSE 58846
CMD ["/start.sh"]
