#! /bin/bash
sudo docker image pull olushuo/fdc-taxii-server:1.0
sudo docker container run --name taiiserver -d -p 9001:9001 olushuo/fdc-taxii-server:1.0