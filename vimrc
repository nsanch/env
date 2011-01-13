syntax on

set number
set hlsearch
set incsearch
set visualbell

" overrides to inkpot here
"let g:inkpot_black_background = 1
"colorscheme inkpot
"hi Normal guifg=#ffffff

" colorscheme vilight
" colorscheme Dim
" colorscheme brookstream

" Edit another file in the same directory as the current file.
" map ;e :e <C-R>=substitute(expand("%:h"), ".$", "&/", "")<CR>
" map ;sp :sp <C-R>=substitute(expand("%:h"), ".$", "&/", "")<CR>

" set viminfo='10,\"100,:20,%,n~/.viminfo
"     au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" highlight lines longer than 80 characters
" http://vim.wikia.com/wiki/Highlight_long_lines
":au BufWinEnter * let w:m1=matchadd('Search', '\%<101v.\%>100v', -1)
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

" remove spaces at the end of lines
":au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set ruler

set wildignore=*.pyc

" from http://github.com/spf13/spf13-vim/blob/master/.vimrc
set backup
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimswap
set viewdir=$HOME/.vimviews

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" set scrolljump=5

" and make NERDtree easier
map :NT :NERDTreeToggle

" annoying i think
set nocursorline

filetype plugin on
filetype detect

" TODO: this should go in a non-repo-specific place.
set tags=tags

map [ :exec("tag ".expand("<cword>"))<CR>

" http://stackoverflow.com/questions/2732267/vim-loses-undo-history-when-changing-buffers
set hidden
