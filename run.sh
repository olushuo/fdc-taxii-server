#! /bin/bash
docker image pull olushuo/fileserver:1.0
docker container run --name taiiserver -d -p 80:80 olushuo/fdc-taxii-server:1.0