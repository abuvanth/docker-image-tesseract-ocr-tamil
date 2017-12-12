#!/bin/bash
docker run -dt --name tamil tesseract-ocr-tamil
docker ps -f name=tamil
