FROM centos:7
MAINTAINER atiger77@126.com
COPY MongoDB-org-3.2.repo  /etc/yum.repos.d/MongoDB-org-3.2.repo
COPY xunfeng-master /root
RUN  echo TZ\='Asia/Shanghai'\; export TZ >> ~/.bash\_profile && source ~/.bash\_profile
RUN  yum install wget gcc libffi-devel python-devel openssl-devel libpcap-devel mongodb-org -y && yum clean all
RUN  wget https://sec.ly.com/mirror/get-pip.py --no-check-certificate && python get-pip.py && pip install -U pip && pip install pymongo Flask xlwt paramiko
 
COPY Run.sh /root/Run.sh
COPY Config.py /root/Config.py
COPY mongoauth.txt /root/mongoauth.txt

CMD ["/bin/bash", "/root/Run.sh"]
 
