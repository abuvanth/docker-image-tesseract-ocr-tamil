#!/bin/bash
docker run -dt --name tamil abuvanth/tesseract-ocr-tamil
docker ps -f name=tamil
