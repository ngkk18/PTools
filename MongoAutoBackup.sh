#!/bin/bash
DATE=$(date +%F_%H-%M-%S)
HOST=58.56.115.251
USER=ERPMongo*.
PASS=s9cCERP_2015
BACKUP_DIR=/data/db_backup

for DB in $DB_LIST; do
    BACKUP_NAME=$BACKUP_DIR/${DB}_${DATE}.csv
    if ! mongoexport -h IP --port 27017 -u USER -p PASS -d ERPMANAGE -c USER --csv -o BACKUP_NAME then
        echo "$BACKUP_NAME 备份失败!"
    fi
done