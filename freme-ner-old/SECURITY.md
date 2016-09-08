
## Security Issues

In order to keep the server safety, we recommend to create a strong password for MySQL and change [in Docker Composer file](https://github.com/sandroacoelho/freme-docker/blob/master/docker-compose.yml#L34) and [in application properties](https://github.com/sandroacoelho/freme-docker/blob/master/freme-ner/config/application.properties#L17). Also you should have create a strong password for Virtuoso and change it [here](https://github.com/sandroacoelho/freme-docker/blob/master/docker-compose.yml#L26).


We recomend to run all services behind an Apache instance with [mod_evasive](http://www.faqforge.com/linux/prevent-dos-attacks-on-apache-webserver-for-debian-linux-with-mod_evasive/) installed. Our suggested configuration is:

<p align="center">
 <img src="configuration_diagram.png"/>
</p>


### For Apache

        ProxyPass /solr http://0.0.0.0:8983/solr
        ProxyPassReverse /solr http://0.0.0.0:8983/solr

        ProxyPass /sparql http://0.0.0.0:8890/sparql
        ProxyPassReverse /sparql http://0.0.0.0:8080/sparql

        ProxyPass /freme-ner http://0.0.0.0:7002/
        ProxyPassReverse /freme-ner http://0.0.0.0:7002
