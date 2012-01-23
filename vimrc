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
:au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

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

set colorcolumn=81,120
hi ColorColumn ctermbg=DarkGray

filetype plugin on
filetype detect

set tags=tags

map [ :exec("tag ".expand("<cword>"))<CR>

" http://stackoverflow.com/questions/2732267/vim-loses-undo-history-when-changing-buffers
set hidden

" Make backspace not be completely broken -
" http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
set backspace=2

autocmd! BufNewFile * silent! 0r ~/.vim/templates/tmpl.%:e


"switch b/w concrete + abstract
""./core/src/main/scala/com/foursquare/services/concrete/ConcreteLoginService.scala
"./core/src/main/scala/com/foursquare/services/LoginService.scala
nmap ,c :e <C-R>=expand("%:p:h"). "/concrete/Concrete" .  expand("%:t")<CR><CR>
nmap ,a :e <C-R>=substitute(expand("%"), "concrete/Concrete", "", "")<CR><CR>
"
""switch b/w source & test
"./core/src/main/scala/com/foursquare/model/Venue.scala
""./web/src/test/scala/com/foursquare/model/VenueTest.scala
nmap ,t :e <C-R>=substitute(expand("%:p:h"), "/main/", "/test/", "") . "/" . substitute(expand("%:t"), ".scala", "Test.scala", "")<CR><CR>
nmap ,s :e <C-R>=substitute(expand("%:p:h"), "/test/", "/main/", "") . "/" . substitute(expand("%:t"), "Test.scala", ".scala", "")<CR><CR>

" more mappings from blackmad. treat jj as escape since the escape key is hard
" to reach
imap jj <Esc>
map <F1> <Esc>
imap <F1> <Esc>
