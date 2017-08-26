
set nocompatible              " be iMproved, required
filetype off                  " required

 set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Install L9 and avoid a Naming conflict if you've already installed a
 " different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}
 " Nerdtree Plug
 Plugin 'scrooloose/nerdtree'
 " Supertab plugin (tab autocomplete) 
 Plugin 'ervandew/supertab'
 " Syntax Error checking
 Plugin 'scrooloose/syntastic'
 Plugin 'tpope/vim-surround'
 " All of your Plugins must be added before the following line
 Plugin 'mattn/emmet-vim'
 " HTML auto complete
 Plugin 'pangloss/vim-javascript'
 "Javascript indentation
 Plugin 'Raimondi/delimitMate'
 "auto closing quotes, brackets, etc
 Plugin 'FuzzyFinder'

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
 " Put your non-Plugin stuff after this liner

 "scroolose syntastic setup stuff
 "set statusline+=%#warningmsg#
 "set statusline+=%{SyntasticStatuslineFlag()}
 "set statusline+=%*

 "let g:syntastic_always_populate_loc_list = 1
 "let g:syntastic_auto_loc_list = 1
 "let g:syntastic_check_on_open = 1
 "let g:syntastic_check_on_wq = 0

 "Fuzzy finder searchinf bound to ,f
 map ,f :FufFile **/<CR>


 set mouse=a             " Click and scroll through vim

 " Tab indents
 set tabstop=2
 set softtabstop=2
 set shiftwidth=2
 set expandtab

 "Line numbers
 set relativenumber 
 set number

 "EJS syntax highlight
 au BufNewFIle,BufRead *.ejs set filetype=html

 colorscheme monokai
 set number
 syntax on
 nnoremap ; :
 filetype plugin indent on
 autocmd VimEnter * NERDTree
 autocmd VimEnter * wincmd p
