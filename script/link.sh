#!/bin/sh

BASE_DIR=${PWD}"/"

#pipeから読みだしてloop
cat - | while read src dest cond ; do
	eval ${cond} && ln -sfnv ${BASE_DIR}${src} `eval echo ${dest}`
done
