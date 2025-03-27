"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######



" General
set nofoldenable
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set showcmd
set backspace=indent,eol,start whichwrap+=<,>,[,]


" 快捷键
vnoremap <C-y> "+y
nnoremap <C-p> "*p

" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no

" Lang & Encoding
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8

set cursorline
set hlsearch
set number
" 窗口大小
" set lines=30 columns=81

" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
" Format
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on

set ambiwidth=double
set noundofile
set nobackup
set noswapfile

" Vundle
filetype off
set shellslash
set rtp+=~/.config/vim/bundle/Vundle.vim

call vundle#begin('~/.config/vim/bundle')
"""""""""以后插件都添加到这里"""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'preservim/vim-markdown'
" Plugin 'godlygeek/tabular'
" Plugin 'iamcco/markdown-preview.vim'
" Plugin 'suan/vim-instant-markdown'
Plugin 'iamcco/mathjax-support-for-mkdp'    " 数学公式显示插件
" Plugin 'brglng/vim-im-select'
"""""""""""主题"""""""""""
Plugin 'altercation/vim-colors-solarized'
Plugin 'hzchirs/vim-material'
Plugin 'kaicataldo/material.vim'
Plugin 'rakr/vim-one'
""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required


" markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_java_frontmatter = 1



" 主题
let g:solarized_termtrans = 1 " 使用 termnal 背景
let g:solarized_visibility = "high" " 使用 :set list 显示特殊字符时的高亮级别
 
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR> 

" 终端模式深色背景
" set background=light
set background=dark
" 主题设置为 
" colorscheme solarized
" colorscheme material
" colorscheme vim-material
colorscheme one
