syntax enable
"if has('gui_running')
   set background=dark
"else
"    set background=light
"endif

" using Source Code Pro
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 10

let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-default
colorscheme base16-default

set nocompatible
filetype indent plugin on
filetype off
set number
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set confirm
set tabstop=2
set shiftwidth=2
set noswapfile
set nobackup

set showcmd
set showmode
"set visualbell

set wildmenu
set wildmode=list:longest,full

set t_vb=
set mouse=a
set cursorline
set colorcolumn=80

" Always show statusbar
set showtabline=2

set tags=./tags,tags;$HOME


set wildignore+=*vendor/*,*tests/_log/*,*node_modules/*,*.zip

"VUNDLE
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'Lokaltog/vim-easymotion'
" Solarized theme
" Plugin 'altercation/vim-colors-solarized'
" Airline
Plugin 'bling/vim-airline'
" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'kchmck/vim-coffee-script'
Plugin 'evidens/vim-twig'
" Indentation detection
"Plugin 'tpope/vim-sleuth'
" Numbers in tabs
"Plugin 'mkitt/tabline.vim'
" Save sessions
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'
" Emmet (Zencoding)
Plugin 'mattn/emmet-vim'
" Autosave on change
"Plugin 'vim-scripts/vim-auto-save'
" Better marks
"Plugin 'kshenoy/vim-signature'
" Snippet stuff
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
" Howdoi Plugin
" Plugin 'laurentgoudet/vim-howdoi.git'
" Golang plugin
Plugin 'fatih/vim-go'
" Gitgutter plugin
Plugin 'airblade/vim-gitgutter'
"" Color scheme
Plugin 'chriskempson/base16-vim'
" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'
" PHP QA Tools
" Plugin 'joonty/vim-phpqa.git'
" silver searcher
Plugin 'rking/ag.vim'
" Syntax checker
Plugin 'scrooloose/syntastic'
" PHP Refactoring tools
" Plugin 'vim-php/vim-php-refactoring'
" Tagbar
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
" Easy motion
Plugin 'Lokaltog/vim-easymotion'
" Clojure
" Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'
" Plugin 'tpope/vim-leiningen'
" Typescript
"Plugin 'leafgarland/typescript-vim'
" Vimproc
" Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/vimshell.vim'
" JSfmt
" Plugin 'mephux/vim-jsfmt'
" Fixing whitespace
Plugin 'bronson/vim-trailing-whitespace'

" Scala....
"Plugin 'derekwyatt/vim-scala'

" LESS Support
Plugin 'groenewege/vim-less'

" WakaTime
Plugin 'wakatime/vim-wakatime'

" Livereload BIATCH
" Plugin 'flomotlik/vim-livereload'

" Show images in VIM?!
Plugin 'tpope/vim-afterimage'

" Javascript youcompleteme
Plugin 'marijnh/tern_for_vim'

" Debug bar for Vim
Plugin 'joonty/vdebug.git'

Plugin 'editorconfig/editorconfig-vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'ryanss/vim-hackernews'

" Ruby things, ok?!
Plugin 'vim-ruby/vim-ruby'

"Bundle 'Shougo/vimproc'
"Bundle 'Shougo/unite.vim'
"Bundle 'm2mdas/phpcomplete-extended'

Plugin 'tpope/vim-endwise'
Plugin 'Shougo/neocomplcache.vim'

"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

"let g:phpcomplete_index_composer_command = 'composer'


" plugins
let g:js_fmt_autosave = 0

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:syntastic_javascript_checkers = ['jsxhint']



let g:php_refactor_command='php ~/Downloads/refactor.phar'

let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1

let g:session_autosave = 'no'

"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
"let g:snipMate.scope_aliases['javascript'] = 'coffee,javascript'
" End snippet stuff

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

let g:vdebug_options= {
\    "port" : 5000,
\    "server" : '127.0.0.1',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : 'typeform',
\    "path_maps" : {},
\    "debug_window_level" : 0,
\    "debug_file_level" : 2,
\    "debug_file" : "/home/victor/vdebug.log",
\    "watch_window_style" : 'expanded',
\    "marker_default" : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾'
\}

"nmap <silent> <C-D> :NERDTreeToggle<CR>

" Easy pane switching with ctrl-direction
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
nnoremap <A-]> :tabnext<CR>
inoremap <A-]> <Esc>:tabnext<CR>i
nnoremap <A-[> :tabprevious<CR>
inoremap <A-[> <Esc>:tabprevious<CR>i

nnoremap <C-t> :TagbarToggle<CR>

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"



" Rebind vim-easymotion to space
map <SPACE> <Plug>(easymotion-s2)

nmap <C-w> :NERDTreeToggle<CR>
nmap <C-d> :NERDTreeFind<CR>

" Fix copy paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Vim-go configuration

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" " Emmet to ctrl+e
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='a'
" Disable autoload of sessions
let g:session_autoload = 'no'

let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 0
let g:phpqa_messdetector_autorun = 0

" Airline settings
set laststatus=2
let g:airline_powerline_fonts = 1

autocmd FileType md set shiftwidth=4|set expandtab

autocmd! bufwritepost .vimrc source %

" Enable autocomplete
let g:neocomplcache_enable_at_startup = 1

set spell spelllang=en_us

" Hide menus and shit from gvim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

