#!/bin/bash

aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 429877192616.dkr.ecr.us-west-2.amazonaws.com
docker build -t airflow-webserver-ecr -f Dockerfile.webserver .
docker tag airflow-webserver-ecr:latest 429877192616.dkr.ecr.us-west-2.amazonaws.com/airflow-webserver-ecr:latest
docker push 429877192616.dkr.ecr.us-west-2.amazonaws.com/airflow-webserver-ecr:latest