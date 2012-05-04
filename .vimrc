set nu
set sw=2
set ts=2
set expandtab
set nocompatible
set hlsearch
syntax on

" vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'matchit.zip'
Bundle 'rossbeehler/vim-ruby-refactoring'
Bundle 'BreakPts'
Bundle 'genutils'
filetype plugin indent on

" vim-ruby-refactoring mappings
nnoremap <leader>nt :NERDTree projects<cr>
nnoremap <C-R><C-I> :RInlineTemp<cr>
nnoremap <C-R><C-L> :RExtractLet<cr>
vnoremap <C-R><C-M> :RExtractMethod<cr>
vnoremap <C-R><C-V> :RExtractLocalVariable<cr>
vnoremap <C-R><C-C> :RExtractConstant<cr>
vnoremap <C-R><C-R><C-I> :RRenameInstanceVariable<cr>
vnoremap <C-R><C-R><C-L> :RRenameLocalVariable<cr>
