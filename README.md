# Devdock
Docker for development:
- nginx
- mysql
- postgresql
- php
- phpmyadmin
- phppgadmin
- adminer
- composer
- nodejs/npm
- mailhog
- redis
- elasticsearch

## Setup

    cp .env-dist .env

## Building

    docker-compose build

## Running

    docker-compose up

## Apply permissions to the log folder

    $ sudo chmod -R 777 ./nginx/log
    $ sudo chmod -R 777 ./data

## Directory structure

    - devdock
        - mysql
        - elasticsearch
        - nginx
            - conf
            - html
            - log
            - ssl
        - php
        - data
            - elasticsearch
            - mysql
            - postgresql
    - www
        - project1.loc
            - public
        - project2.loc
            - public
        - project3.loc
            - public
        - ...

## Add the domains to the hosts files

    127.0.0.1   project1.loc
    127.0.0.1   project2.loc
    127.0.0.1   project3.loc
    ...

## Dashboard. Open your browser and visit the localhost

    http://localhost/

## phpMyAdmin. Open your browser and visit the localhost on port 8306

    http://localhost:8306/
    
## phpPgAdmin. Open your browser and visit the localhost on port 8432

    http://localhost:8432/
    
## Adminer. Open your browser and visit the localhost on port 8080

    http://localhost:8080/

## MailHog. Open your browser and visit the localhost on port 8025

    http://localhost:8025/

## ElasticSearch. Open your browser and visit the localhost on port 9201
    http://localhost:9200/

## Open your browser and visit the project1.loc and etc.

    https://project1.loc/
    https://project2.loc/
    https://project3.loc/
    ...
