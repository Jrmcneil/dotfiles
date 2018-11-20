set nocompatible       
filetype off          
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

autocmd FileType make setlocal noexpandtab
set ofu=syntaxcomplete#Complete

set t_Co=256
syntax enable

autocmd BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json sou ~/.vim/syntax/json.vim

autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

augroup markdown
  au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
    augroup END

if exists('+colorcolumn')
    set colorcolumn=81
    highlight ColorColumn ctermbg=red
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
endif

set number
set numberwidth=6
set cul         
set laststatus=2
set nohlsearch 
set incsearch 
set ignorecase
set ruler    
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set visualbell

map <Esc>[B <Down>

set autoindent            
set tabstop=2            
set softtabstop=2       
set shiftwidth=2       
set shiftround        
set expandtab        
set smartindent     
set smarttab              
set nowrap               

nnoremap oo <Esc>o<Esc>
nnoremap OO <Esc>O<Esc>

" strip whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

Plugin 'editorconfig/editorconfig-vim'
Plugin 'rking/ag.vim'
nnoremap <leader>a :Ag -i<space>

Plugin 'matthias-guenther/hammer.vim'
nmap <leader>p :Hammer<cr>

Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'tpope/vim-eunuch'

Plugin 'scrooloose/nerdtree'
" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L
" Keep NERDTree window fixed between multiple toggles
set winfixwidth

Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/YankRing.vim'
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
nmap <leader>y :YRShow<cr>

Plugin 'michaeljsmith/vim-indent-object'
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

Plugin 'Spaceghost/vim-matchit'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = ''

Plugin 'vim-scripts/scratch.vim'

Plugin 'troydm/easybuffer.vim'
nmap <leader>be :EasyBufferToggle<cr>

Plugin 'terryma/vim-multiple-cursors'

" parenthsismatcher
Bundle 'vim-scripts/paredit.vim'

" tslime
Bundle 'sjl/tslime.vim'

" Rainbow
Bundle 'luochen1990/rainbow'
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 08. Languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Ruby

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'ecomba/vim-ruby-refactoring'

autocmd FileType ruby,eruby,yaml set tw=80 ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal foldmethod=manual
" In Ruby files, use 2 spaces instead of 4 for tabs
autocmd FileType ruby setlocal sw=2 ts=2 sts=2
"
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"" HTML

Plugin 'tpope/vim-haml'
Plugin 'juvenn/mustache.vim'
Plugin 'tpope/vim-markdown'
Plugin 'digitaltoad/vim-jade'
Plugin 'slim-template/vim-slim'

au BufNewFile,BufReadPost *.jade setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.html setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.slim setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.md set filetype=markdown

let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']

"" CSS

Plugin 'wavded/vim-stylus'
Plugin 'lunaru/vim-less'
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"" HTML

Plugin 'kchmck/vim-coffee-script'
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

Plugin 'alfredodeza/jacinto.vim'
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"" Clojure

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'

"" Haskell

Plugin 'Twinside/vim-syntax-haskell-cabal'
Plugin 'lukerandall/haskellmode-vim'

au BufEnter *.hs compiler ghc

let g:ghc = "/usr/local/bin/ghc"
let g:haddock_browser = "open"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Scheme indentation {{{
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
" }}}

" tslime config {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
" }}}
