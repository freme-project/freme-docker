FROM frolvlad/alpine-oraclejdk8:slim

COPY freme-package/ freme-package
COPY freme-ner-models/ freme-ner-models
RUN sh -c 'touch /freme-package/*.jar'
RUN sh -c 'cd /freme-package/'
ENTRYPOINT java -cp "freme-package/*:freme-package/config" -Djava.security.egd=file:/dev/./urandom  org.springframework.boot.loader.JarLauncher



