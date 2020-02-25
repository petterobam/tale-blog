# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"
cd $basepath
datetime=`date`
echo "当前时间：$datetime"
echo "git pull origin master"
git pull origin master
echo "git add ."
git add . 
echo "git commit -a -m 'git auto backup at $datetime'"
git commit -m 'git auto backup at $datetime'
echo "git push origin master"
git push origin master
