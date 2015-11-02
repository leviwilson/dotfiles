execute pathogen#infect()

set nu
set sw=2
set ts=2
set softtabstop=2
set expandtab
set nocompatible
set hlsearch
set showmatch
set incsearch
set history=1000
set background=dark
set noswapfile
set hidden
set ruler
syntax on
filetype plugin indent on

au BufNewFile,BufRead *.podspec setf ruby
au BufNewFile,BufRead Podfile setf ruby
au BufNewFile,BufRead *.coffee setf javascript
au BufNewFile,BufRead *.us setf html

autocmd FileType html setlocal sw=4 ts=4
autocmd FileType python setlocal sw=4 sts=4
autocmd FileType ruby setlocal sw=2 sts=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=4 sts=4 sw=4

" vundle
" filetype off
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" Bundle 'gmarik/vundle'
" Bundle 'scrooloose/nerdtree'
" Bundle 'matchit.zip'
" Bundle 'rossbeehler/vim-ruby-refactoring'
" Bundle 'BreakPts'
" Bundle 'genutils'
" filetype plugin indent on

" vim-ruby-refactoring mappings
nnoremap <leader>nt :NERDTree projects<cr>
nnoremap <C-R><C-I> :RInlineTemp<cr>
nnoremap <C-R><C-L> :RExtractLet<cr>
vnoremap <C-R><C-M> :RExtractMethod<cr>
vnoremap <C-R><C-V> :RExtractLocalVariable<cr>
vnoremap <C-R><C-C> :RExtractConstant<cr>
vnoremap <C-R><C-R><C-I> :RRenameInstanceVariable<cr>
vnoremap <C-R><C-R><C-L> :RRenameLocalVariable<cr>

" seeing-is-believing
nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
xmap <buffer> <F5> <Plug>(seeing-is-believing-run)
imap <buffer> <F5> <Plug>(seeing-is-believing-run)

nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

nmap ,f :!clear && rake features<cr>
nmap gpr :!clear && git pull --rebase<cr>
nmap ,w :!clear && rake wip<cr>
nmap ,t :!clear && rake<cr>
nmap ,ri :!clear && bundle exec irb --noprompt -r ./%<cr>
nmap ,ru :!clear && bundle exec rackup<cr>
