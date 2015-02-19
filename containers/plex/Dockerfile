FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -q update
# RUN apt-get -qy --force-yes dist-upgrade
RUN apt-get install -qy --force-yes curl tree nginx
RUN echo "deb http://shell.ninthgate.se/packages/debian squeeze main" > /etc/apt/sources.list.d/plexmediaserver.list
RUN curl http://shell.ninthgate.se/packages/shell-ninthgate-se-keyring.key | apt-key add -
RUN apt-get -q update
RUN apt-get install -qy --force-yes plexmediaserver
RUN apt-get remove -qy --force-yes curl
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*
VOLUME /config
VOLUME /data
VOLUME /data2
ADD ./start.sh /start.sh
RUN chmod u+x /start.sh && service nginx stop && rm -rf /etc/nginx/nginx.conf
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./sites /etc/nginx/sites
EXPOSE 32400
EXPOSE 80
CMD ["/start.sh"]
