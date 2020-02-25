#!/bin/bash
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"
echo "cd $basepath"
cd $basepath
echo "chmod u+x backup.sh"
chmod u+x backup.sh
echo "echo \"00 07 * * * root $basepath/backup.sh\" >> /etc/crontab"
echo "00 07 * * * root $basepath/backup.sh" >> /etc/crontab
echo "echo >> /etc/crontab"
echo >> /etc/crontab
echo "service crond reload"
service crond reload
