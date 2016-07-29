FROM java:8

ENV URL  https://www.dropbox.com/s/t403cmuxfk81hf0/
ENV FREME_NER freme-ner-dev-0.8-full.jar
ENV FREME_MODELS http://api.freme-project.eu/datasets/ner-trained-models/wikiner/
ENV FREME_EN wikiner-en-ner-model.ser.gz

RUN mkdir -p /opt/freme-ner/config && mkdir -p /opt/freme-ner/bin && mkdir -p /opt/freme-ner/models

ADD config/*  /opt/freme-ner/config/
ADD bin/*  /opt/freme-ner/bin/


RUN cd /opt/freme-ner/ && \
    wget --quiet ${URL}${FREME_NER}?dl=1 -O ${FREME_NER} && \
    cd /opt/freme-ner/models && \
    wget --quiet ${FREME_MODELS}${FREME_EN}    
