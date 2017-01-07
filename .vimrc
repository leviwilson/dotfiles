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

autocmd FileType html setlocal sw=2 ts=2
autocmd FileType python setlocal sw=4 sts=4
autocmd FileType ruby setlocal sw=2 sts=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2

" ====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

highlight ExtraWhitespace ctermbg=green guibg=green
match ExtraWhitespace /\s\+$/

" let test#strategy = "iterm"

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

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --hidden

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -i --files-with-matches --nocolor --nogroup  -g "" --ignore "./docs/api"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let mapleader = ","
vmap <leader>c <esc>:'<,'>:CoffeeCompile<cr>
map <leader>c :CoffeeCompile<cr>

nmap ,f :!clear && rake features<cr>
nmap gpr :!clear && git pull --rebase<cr>
nmap ,w :!clear && rake bundle exec cucumber --tags @wip<cr>
nmap ,rt :!clear && spring rake spec<cr>
nmap ,ri :!clear && bundle exec irb --noprompt -r ./%<cr>
nmap ,ru :!clear && bundle exec rackup<cr>
nmap ,rs :!clear && spring rails s<cr>
nmap ,rc :!clear && spring rails c<cr>
nmap ,b :!clear && bundle<cr>
nmap ,cc :CoffeeCompile<cr>

nmap <S-Up> :cprevious<CR>
nmap <S-Down> :cnext<CR>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
