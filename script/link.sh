#!/bin/sh

BASE_DIR=${PWD}"/"

#pipeから読みだしてloop
cat - | while read src dest cond ; do
	absDest=`eval echo ${dest}`
	if [ -e ${absDest} ] ; then
		[ -L ${absDest} ] && unlink ${absDest} || mv ${absDest} ${absDest}-backup`date +%F-%H-%M-%S`
	fi
	eval ${cond} && ln -sfnv ${BASE_DIR}${src} ${absDest}
done
#最後のevalがfalseを返したときのために必ず成功終了させる
exit 0
