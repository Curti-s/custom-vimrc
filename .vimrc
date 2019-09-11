" Lines of history to remember
set history=500 

" Editing
" split right
set splitright
" text width 
set textwidth=79

" Enable syntax processing
syntax enable

" Use spaces instead of tabs
" tabs are spaces
set expandtab

" number of visual spaces per TAB   
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" UI config
" show line numbers
set number 
" show comand at the bottom bar
set showcmd 
" highlight current line
set cursorline 
hi CursorLine term=bold cterm=bold guibg=Grey40
" background line color
set background=dark
" load filetype-specific indent files
filetype indent on 
" Use indent from current line for next line
set autoindent 
" Detect when file changes outside of vim
set autoread 
" Be clever when code cues are recognized
set smartindent 
" wrap lines
set wrap 
" visual autocomplete for command menu
set wildmenu 
" redraw only when we need to
set lazyredraw 
" highlight matching [] {} ()
set showmatch


" Searching
" search as character are being entered
set incsearch " highlight search matches
set hlsearch


" Folding
" enable folding
set foldenable 
" open most folds by default
set foldlevelstart=10  
" 10 nested fold mac
set foldnestmax=10 
" open/close folds
nnoremap <space> za 
" fold based on indent level
set foldmethod=indent 


" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Spell check and line wrap for git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Set backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Load pathogen plugin manager
execute pathogen#infect()
syntax on
filetype plugin indent on


" airline powerline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

" yaml, yml
autocmd FileType yaml,yml,javascript,jsx setlocal ts=2 sts=2 sw=2 expandtab

" NERDTreeToggle
noremap <C-w>n :NERDTreeToggle<cr>

" Split
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>

" closing buffer
noremap <C-w>b :Bclose<cr>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_shell = "/usr/bin/zsh" 

" vim-plug plugins
call plug#begin('~/.vim/plugged')

" Declare list of plugins
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ale configuration
let g:ale_sign_error='❌'
let g:ale_sign_warning='⚠'
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Fix files automatically on save
let g:ale_fix_on_save = 1
