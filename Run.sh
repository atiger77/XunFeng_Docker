#!/bin/bash
CURRENT_PATH=`dirname $0`
cd $CURRENT_PATH

XUNFENG_LOG=/var/log/xunfeng
XUNFENG_DB=/var/lib/mongodb

[ ! -d $XUNFENG_LOG ] && mkdir -p ${XUNFENG_LOG}
[ ! -d $XUNFENG_DB ] && mkdir -p ${XUNFENG_DB}
nohup mongod --port 65521 --dbpath=${XUNFENG_DB} > ${XUNFENG_LOG}/db.log &
cd /root && mongorestore -h 127.0.0.1 --port 65521 -d xunfeng db
mongo 127.0.0.1:65521/xunfeng < /root/mongoauth.txt

nohup cd /root  && python ./Run.py > ${XUNFENG_LOG}/web.log &
nohup cd /root  && python ./aider/Aider.py > ${XUNFENG_LOG}/aider.log &
nohup cd /root  && python ./nascan/NAScan.py > ${XUNFENG_LOG}/scan.log &
nohup cd /root  && python ./vulscan/VulScan.py > ${XUNFENG_LOG}/vul.log 
