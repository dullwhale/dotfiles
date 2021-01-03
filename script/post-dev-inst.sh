#!/bin/sh
# dev-install後の後処理

# vimのプラグインマネージャvim-plugをautoloadディレクトリにダウンロードして配置
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ~/.vimrcが残っていると、そちらを先に読み込んでしまうのでunlinkする
unlink ${HOME}/.vimrc
