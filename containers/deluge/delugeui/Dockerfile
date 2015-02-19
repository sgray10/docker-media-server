FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -q update
RUN apt-get -qy --force-yes dist-upgrade
RUN apt-get install -qy --force-yes tree software-properties-common 
RUN add-apt-repository ppa:deluge-team/ppa
RUN apt-get install -qy --force-yes deluge-web
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*
VOLUME /config
VOLUME /data
ADD ./start.sh /start.sh
RUN chmod u+x /start.sh
EXPOSE 8112
CMD ["/start.sh"]
