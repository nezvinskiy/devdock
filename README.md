# Devdock
Docker for development

## Setup

    cp .env-dist .env

## Building

    docker-compose build

## Running

    docker-compose up

## Apply permissions to the log folder

    $ sudo chmod -R 777 ./nginx/log

## Directory structure

    - devdock
        - mysql
        - nginx
            - conf
            - html
            - log
        - php
    - www
        - project1.loc
        - project2.loc
        - project3.loc
        - ...

## Add the domains to the hosts files

    127.0.0.1   project1.loc
    127.0.0.1   project2.loc
    127.0.0.1   project3.loc
    ...

## phpMyAdmin. Open your browser and visit the localhost on port 8306

    http://localhost:8306/

## Open your browser and visit the project1.loc on port 8080

    http://project1.loc:8080/
