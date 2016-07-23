FROM solr:5

ADD conf/mapping-ISOLatin1Accent.txt /opt/solr/server/solr/configsets/data_driven_schema_configs/conf/
ADD conf/schema.xml /opt/solr/server/solr/configsets/data_driven_schema_configs/conf/
ADD conf/solrconfig.xml /opt/solr/server/solr/configsets/data_driven_schema_configs/conf/
ADD conf/lang/stopwords_ckb.txt  /opt/solr/server/solr/configsets/data_driven_schema_configs/conf/lang/

RUN /opt/solr/bin/solr start && /opt/solr/bin/solr create_core -c elinker

