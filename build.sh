#! /bin/bash
sudo docker image build -t olushuo/fdc-taxii-server:b1.0 .
sudo docker image tag olushuo/fdc-taxii-server:b1.0 olushuo/fdc-taxii-server:1.0
sudo docker image push olushuo/fdc-taxii-server:1.0