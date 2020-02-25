#!/bin/bash
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"
echo "cd $basepath"
cd $basepath
datetime=`date`
echo "当前时间：$datetime"
echo "git pull origin master"
git pull origin master
echo "git add ."
git add .
echo "git commit -m 'auto commit backup'"
git commit -m 'auto commit backup'
echo "git push origin master"
git push origin master
