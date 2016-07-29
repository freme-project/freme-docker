FROM java:8

ENV URL  https://www.dropbox.com/s/t403cmuxfk81hf0/
ENV FREME_NER freme-ner-dev-0.8-full.jar

ENV FREME_MODELS http://api.freme-project.eu/datasets/ner-trained-models/wikiner/






RUN cd /opt && \
    wget --quiet ${URL}${FREME_NER}?dl=1 -O ${FREME_NER} && \
    mkdir models
    
