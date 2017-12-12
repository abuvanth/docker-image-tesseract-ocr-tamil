#!/bin/bash
docker stop tamil
docker rm tamil
docker ps -f name=tamil
