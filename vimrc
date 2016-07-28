" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Events .................. General autocmd events                     "
"   03. Theme/Colors ............ Colors, fonts, etc.                        "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
"   06. Custom Commands ......... Any custom command aliases                 "
"   07. Plugins ................. General plugins
"   08. Languages ............... Language settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " get rid of Vi compatibility mode. SET FIRST!

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Theme/Colors                                                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).

" Prettify JSON files
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Prettify Markdown files
augroup markdown
  au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
    augroup END

     " Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
    set colorcolumn=81
    highlight ColorColumn ctermbg=red
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                " show line numbers
set numberwidth=6         " make the number gutter 6 characters wide
set cul                   " highlight current line
set laststatus=2          " last window always has a statusline
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set visualbell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smartindent           " automatically insert one extra level of
" indentation
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Prettify JSON files making them easier to read
command PrettyJSON %!python -m json.tool


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"07. Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" General

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
