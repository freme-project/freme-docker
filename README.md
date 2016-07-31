## What is FREME-Project?

FREME-Project IS A OPEN FRAMEWORK OF E-SERVICES FOR MULTILINGUAL AND SEMANTIC ENRICHMENT OF DIGITAL CONTENT

FREME will empower digital content managers with its advantages and benefits it brings to the market. FREME addresses the general systemic and technological challenges to validate that multilingual and semantic technologies are ready for their integration in real life business cases in innovative way. These technologies are capable to process (harvest and analyse) content, capture datasets, and add value throughout content and data value chains across sectors, countries, and languages.

## How to run

In order to install FREME-NER in your own server, please follow the next steps

- [Install docker](https://docs.docker.com/engine/installation/) and [docker compose](https://docs.docker.com/compose/);
- Clone this repository ;
- [Adjust security issues](SECURITY.md);
- Create a [partition data](PARTITION_DATA.md);
- run docker-compose build under freme-docker folder ;

If you are running Debian Jessie,

- run wget https://raw.githubusercontent.com/sandroacoelho/freme-docker/master/setup.sh
- run ```chmod a+x setup.sh``` and ```./setup.sh```
- [Adjust security issues](SECURITY.md);
- Create a [partition data](PARTITION_DATA.md);
- run docker-compose build under /opt/freme-docker folder;

## Supported Docker versions
This image is officially supported on Docker version 1.9.1.

Please see the [Docker installation documentation] (https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## Documentation

Documentation for this image is stored in [GitHub repo](http://api-dev.freme-project.eu/doc/tutorials/overview.html).

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/sandroacoelho/freme-docker/issues).

