#!/bin/bash

# Dừng container cũ
docker stop secom_admin || true
docker rm secom_admin || true
docker stop secom_client || true
docker rm secom_client || true
docker stop secom_server || true
docker rm secom_server || true


cd /var/jenkins_home/workspace/secom/server
docker-compose up -d || true

cd /var/jenkins_home/workspace/secom/admin
docker-compose up -d || true

cd /var/jenkins_home/workspace/secom/client
docker-compose up -d || true
