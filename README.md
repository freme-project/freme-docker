

## What is FREME-Project?

![FREME logo](http://www.freme-project.eu/wp-content/uploads/2015/02/FREME_LogoHor_250px.png)

FREME-Project IS A OPEN FRAMEWORK OF E-SERVICES FOR MULTILINGUAL AND SEMANTIC ENRICHMENT OF DIGITAL CONTENT

FREME will empower digital content managers with its advantages and benefits it brings to the market. FREME addresses the general systemic and technological challenges to validate that multilingual and semantic technologies are ready for their integration in real life business cases in innovative way. These technologies are capable to process (harvest and analyse) content, capture datasets, and add value throughout content and data value chains across sectors, countries, and languages.

Get more at [www.freme-project.eu](http://www.freme-project.eu)

## How to install and run

### Requirements

- Unix (We would recomend Debian);
- Docker;
- At least 24GB of RAM;
- At least 200GB of disk space;

### Install steps

In order to install FREME-NER in your own server, please follow the next steps

If you are running a non Debian distribution,

- [Install docker](https://docs.docker.com/engine/installation/) and [docker compose](https://docs.docker.com/compose/);
- Clone this repository ;
- [Adjust security issues](SECURITY.md);
- Create a [partition data](PARTITION_DATA.md);
- run docker-compose build under freme-docker folder ;

If you are running **Debian Jessie**,

- run wget https://raw.githubusercontent.com/sandroacoelho/freme-docker/master/setup.sh
- run ```chmod a+x setup.sh``` and ```./setup.sh```
- [Adjust security issues](SECURITY.md);
- Create a [partition data](PARTITION_DATA.md);
- run docker-compose build under /opt/freme-docker folder;

## Supported Docker versions
This image is officially supported on Docker version 1.9.1.

Please see the [Docker installation documentation] (https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## Documentation

Documentation for this image is stored at [FREME website](http://api-dev.freme-project.eu/doc/tutorials/overview.html).

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/sandroacoelho/freme-docker/issues).


## Maintainers

<a href="http://infai.org"><img src="http://infai.org/de/Aktuelles/files?get=10_jahre_infai_gold.PNG" align="left" height="20%" width="20%" ></a>

