FROM frolvlad/alpine-oraclejdk8:slim

COPY freme-package/ freme-package
RUN sh -c 'touch /freme-package/*.jar'
RUN sh -c 'cd /freme-package/'
ENTRYPOINT java -cp "freme-package/*:freme-package/config" org.springframework.boot.loader.JarLauncher



