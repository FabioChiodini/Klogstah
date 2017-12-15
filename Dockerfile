FROM logstash:2.2.2-1
MAINTAINER Fabio Chiodini <@FabioChiodini> 


COPY logstash.conf /etc/logstash/conf.d
COPY GeoLiteCity.dat /etc/logstash/

EXPOSE 8080

CMD ["-f", "/etc/logstash/conf.d/logstash.conf"]
