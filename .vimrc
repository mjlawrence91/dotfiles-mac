"Bundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/Users/matt/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/matt/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
source ~/.config/nvim/bundle.vim

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set undofile
set undodir=~/.config/nvim/temp/undodir
set noswapfile
set nobackup
set nowritebackup
set noshelltemp
set viminfo=

filetype plugin indent on
syntax enable
colorscheme base16-gooey

set background=dark
set number
set clipboard=unnamed
set relativenumber
set tabstop=4
set smartcase
set expandtab
set shiftwidth=4
set cc=79
set completeopt-=preview
set cursorline
set cursorcolumn
