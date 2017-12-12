#!/bin/bash
docker ps -f name=tamil
TASK_TMP_DIR=TASK_$$_$(date +"%N")
echo "====== TASK $TASK_TMP_DIR started ======"
docker exec -it tamil mkdir \-p ./$TASK_TMP_DIR/
docker cp ./ocr-files/test.jpg tamil:/home/work/$TASK_TMP_DIR/
docker exec -it tamil /bin/bash -c "mkdir -p ./$TASK_TMP_DIR/out/; cd ./$TASK_TMP_DIR/out/; tesseract ../test.jpg phototest -l tam"
mkdir -p ./ocr-files/output/$TASK_TMP_DIR/
docker cp tamil:/home/work/$TASK_TMP_DIR/out/ ./ocr-files/output/$TASK_TMP_DIR/
docker exec -it tamil rm \-r ./$TASK_TMP_DIR/
docker exec -it tamil ls
echo "====== Result files was copied to ./ocr-files/output/$TASK_TMP_DIR/ ======"
