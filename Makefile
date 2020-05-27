.PHONY: help core-install core-instal-debug install-hook
.SILENT: help core-install

PWD := $(shell pwd)

# 普段使う用

help:
	echo "help : このメッセージを表示"
	echo "core-install : どの環境でも必要そうなドットファイルを設定"
	echo "install-hook : 開発用にgit hookをインストールする"
core-install: install-hook
	cat script/core-link | script/link.sh
	sh script/post-core-inst.sh

# 以下開発用
install-hook:
	test -e ./.git/hooks && rm -rf ./.git/hooks || true
	ln -sfnv $(PWD)/hooks ./.git/hooks
core-install-debug:
	cat script/core-link | sh -x  script/link.sh
	sh -x script/post-core-inst.sh
