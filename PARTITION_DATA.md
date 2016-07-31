
## Data partition

All data generated inside docker containers are stored under /mnt/data/. Please see [here](https://github.com/sandroacoelho/freme-docker/blob/master/docker-compose.yml#L17) and [here](https://github.com/sandroacoelho/freme-docker/blob/master/docker-compose.yml#L24). 

You can modify it according to your needs, just ensure to grant chmod -R 0755. 

if you choose to keep the sugested folder, just follow the instructions:

- mkdir -r /mnt/data 
- unpack [solr.tar.gz](https://github.com/sandroacoelho/freme-docker/blob/master/freme-ner-solr/solr.tar.gz) under /mnt/data
and finally run 
0 chmod -R 0755 /mnt/data
