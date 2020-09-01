"===========================================================================
" VIM-Plug 插件管理
"===========================================================================
filetype off                  " 必须要添加
" 置包括vundle和初始化相关的runtime path
call plug#begin('~/.config/nvim/plugged')

Plug 'hardcoreplayers/spaceline.vim'
" Use the icon plugin for better behavior
Plug 'ryanoasis/vim-devicons'
Plug 'hardcoreplayers/oceanic-material'

call plug#end()
