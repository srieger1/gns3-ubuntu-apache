FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install apache2 \
  sudo wget vim nano joe htop net-tools iputils-ping traceroute socat mtr host iperf3 curl iproute2 tcpdump telnet

ADD start-services.sh /root/start-services.sh
RUN chmod +x /root/start-services.sh

CMD /root/start-services.sh

VOLUME /root 
