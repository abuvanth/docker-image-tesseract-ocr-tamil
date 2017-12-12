#
# Tesseract 4 OCR Runtime Environment - Docker Container
#

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:alex-p/tesseract-ocr
RUN apt-get update && apt-get install -y tesseract-ocr 

RUN mkdir /home/work
WORKDIR /home/work
ADD https://raw.githubusercontent.com/tesseract-ocr/tessdata/master/tam.traineddata /usr/share/tesseract-ocr/4.00/
