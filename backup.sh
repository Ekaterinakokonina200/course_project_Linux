#!/bin/bash

DATE=$(date +%F_%H-%M)

tar -czf /backup/etc_$DATE.tar.gz /etc

tar -czf /backup/data_$DATE.tar.gz /data

tar -czf /backup/www_$DATE.tar.gz /var/www

rsync -av /backup/ root@192.168.56.30:/backup/

find /backup -type f -mtime +7 -delete
