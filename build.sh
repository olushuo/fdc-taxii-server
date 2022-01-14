#! /bin/bash
docker image build -t olushuo/fdc-taxii-server:b1.1 .
docker image tag olushuo/fdc-taii-server:b1.1 olushuo/fdc-taxii-server:1.0
docker image push olushuo/fdc-taxii-server:1.0