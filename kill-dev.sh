#!/bin/bash
PREFIX=docker

echo "Stopping containers"
docker stop ${PREFIX}-mysql ${PREFIX}-wordpress

echo "Removing container names"
docker rm ${PREFIX}-mysql ${PREFIX}-wordpress
