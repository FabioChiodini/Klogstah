FROM docker.elastic.co/logstash/logstash:5.3.2

COPY logstash.yml /usr/share/logstash/config/logstash.yml

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf

COPY GeoLite2-City.mmdb /usr/share/logstash/GeoLite2-City.mmdb
