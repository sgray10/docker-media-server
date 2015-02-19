FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
VOLUME /config
VOLUME /data
VOLUME /data2
EXPOSE 5050
EXPOSE 80
RUN apt-get -q update && \
    apt-get -qy --force-yes dist-upgrade && \
    apt-get install -qy --force-yes \
        python \ 
        git-core \ 
        python-lxml \ 
        tree unrar-free \ 
        nginx && \
    git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer && \
    rm /CouchPotatoServer/libs/synchronousdeluge/transfer.py 
ADD transfer.py /CouchPotatoServer/libs/synchronousdeluge/transfer.py
ADD ./start.sh /start.sh
RUN chmod u+x /start.sh && \
    service nginx stop && \
    rm -rf /etc/nginx/nginx.conf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./sites /etc/nginx/sites
CMD ["/start.sh"]
