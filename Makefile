.PHONY: help core-install
.SILENT: help core-install

help:
	echo "help : このメッセージを表示"
	echo "core-install : どの環境でも必要そうなドットファイルを設定"
core-install:
	cat script/core-link | script/link.sh
	sh script/post-core-inst.sh

core-install-debug:
	cat script/core-link | sh -x  script/link.sh
	sh -x script/post-core-inst.sh
