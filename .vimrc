set number
set relativenumber

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set  mouse+=a

autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:syntastic_python_checkers = ['python3']

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

colorscheme elflord

call plug#begin('~/.vim/plugins')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/queezythegreat/vim-syntastic.git'

call plug#end()
