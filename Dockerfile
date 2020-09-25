FROM busybox:latest

LABEL maintainer="Ankit Vashistha"
ENV VERSION 1.0

ENV DOCKERVERSION=19.03.9
RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz

COPY docker_events.sh  /root/docker_events.sh
COPY docker_inventory.sh  /root/docker_inventory.sh
COPY docker_ps.sh  /root/docker_ps.sh
COPY docker_stats.sh  /root/docker_stats.sh
COPY docker_top.sh  /root/docker_top.sh
COPY watchdog.sh  /root/watchdog.sh
COPY start.sh  /root/start.sh

ENTRYPOINT ["/root/start.sh"]

CMD ["/bin/sh"]
