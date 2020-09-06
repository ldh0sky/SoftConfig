
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭兼容模式
"set nocompatible
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" vim 自身命令行模式智能补全
set wildmenu
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase


syntax on
set hlsearch
colorscheme desert
set nocompatible
set backspace=indent,eol,start

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 这里开始调用插件，会自动下载
call plug#begin('~/.vim/plugged')

" 这里根据自己需要的插件来设置


Plug 'luochen1990/rainbow'
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'







" 开启插件
let g:rainbow_active = 1 
let g:molokai_original = 1
set laststatus=2

" 调用结束，VIM 会加载这些插件
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTemplate()" 
" 定义函数SettTemplate，自动插入文件头 
function SetTemplate() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1, "##########################################################################") 
		call append(line("."), "# File Name: ".expand("%")) 
		call append(line(".")+1, "# Author: amoscykl") 
		call append(line(".")+2, "# mail: amoscykl980629@163.com") 
		call append(line(".")+3, "# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "#########################################################################") 
		call append(line(".")+5, "#!/bin/zsh")
		call append(line(".")+6, "PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin")
		call append(line(".")+7, "export PATH")
		call append(line(".")+8, "")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: amoscykl") 
		call append(line(".")+2, "	> Mail: amoscykl@163.com ") 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include<iostream>")
    	call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

" 定义快捷键的前缀，即<Leader>
let mapleader=";"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 实用设置




" 启用256色
set t_Co=256

" 开启左侧行号
set number
" set nonumber

" Tab键的宽度
set tabstop=4
" 自动缩进
set autoindent
set cindent
" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不创建备份文件,尾缀〜
set nobackup
" 不创建交换文件,尾缀.swp
set noswapfile
" 保留撤销历史
set undofile
" 记住的历史操作
set history=100
" 设置备份文件、交换文件、操作历史文件的保存位置
set backupdir=~/.vim/.backup//  
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

