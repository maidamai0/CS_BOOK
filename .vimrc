" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

"vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
let g:ycm_server_python_interpreter='python2'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/DoxygenToolkit.vim'
    let g:DoxygenToolkit_briefTag_funcName = "yes"
    " for C++ style, change the '@' to '\'
    let g:DoxygenToolkit_commentType = "C++"
    let g:DoxygenToolkit_briefTag_pre = "\\brief "
    let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
    let g:DoxygenToolkit_paramTag_pre = "\\param "
    let g:DoxygenToolkit_returnTag = "\\return "
    let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
    let g:DoxygenToolkit_fileTag = "\\file "
    let g:DoxygenToolkit_dateTag = "\\date "
    let g:DoxygenToolkit_authorTag = "\\author "
    let g:DoxygenToolkit_versionTag = "\\version "
    let g:DoxygenToolkit_blockTag = "\\name "
    let g:DoxygenToolkit_classTag = "\\class "
    let g:DoxygenToolkit_authorName = "Qian Gu, guqian110@gmail.com"
    let g:doxygen_enhanced_color = 1
    "let g:load_doxygen_syntax = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.


" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

filetype indent on

"indent setting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" encoding setting
set encoding=utf-8

set nu
