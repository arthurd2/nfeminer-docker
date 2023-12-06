FROM ubuntu:22.04
WORKDIR /nfe
COPY es_nfe* /nfe/
RUN useradd elasticsearch
RUN cat es_nf* > x.tar.gz && rm -f es_nfe*  && tar xzfv x.tar.gz && rm -f x.tar.gz
RUN chown -R elasticsearch /nfe
RUN echo 'network.host: 0.0.0.0' >> /nfe/elasticsearch-7.10.0/config/elasticsearch.yml
RUN echo 'discovery.seed_hosts: ["nfeminer"]' >> /nfe/elasticsearch-7.10.0/config/elasticsearch.yml
USER elasticsearch
EXPOSE 9200
EXPOSE 9300
CMD /nfe/elasticsearch-7.10.0/bin/elasticsearch

