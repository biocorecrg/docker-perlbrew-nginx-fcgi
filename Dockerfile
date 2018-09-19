FROM biocorecrg/debian-perlbrew:stretch

# File Author / Maintainer
MAINTAINER Toni Hermoso Pulido <toni.hermoso@crg.eu>

RUN set -x; apt-get update; apt-get upgrade; apt-get install -y supervisor nginx spawn-fcgi fcgiwrap nginx

# Different volumes where to store stuff
VOLUME /htdocs
VOLUME /cgi-bin
VOLUME /logs

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx-default.conf /etc/nginx/conf.d/default.conf

RUN apt-get clean
RUN set -x; rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["/usr/bin/supervisord"]

