" Plugins
call plug#begin("~/.vim/plugged")
Plug 'mattn/emmet-vim'          " Html autocompleter
Plug 'natebosch/vim-lsc'        " Jump to definition etc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'vimsence/vimsence'
Plug 'itchyny/lightline.vim'
call plug#end()

" Emmet config
let g:user_emmet_mode='n'
let g:user_emmet_install_global=0
let g:user_emmet_leader_key=','

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" Lsc config
let g:lsc_server_commands = { 
        \ 'c': {'command': 'ccls', 'suppress_stderr': v:true },
        \'javascript': 'typescript-language-server --stdio',
        \'cpp': {'command': 'clangd', 'suppress_stderr': v:true },
        \'cs': 'omnisharp -lsp',
        \'lua': 'lua-language-server',
\}
let g:lsc_auto_map = { 'GoToDefinition': 'gd', 'GoToDefinitionSplit': 'gD', 'Rename': 'gR' }

" Use the C languge server for .h files

let g:c_syntax_for_h=1 

" Netrw config
let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_liststyle=3
let g:nertw_browse_split=4
let g:netrw_altv=1

augroup InitEmmet
        autocmd!
        autocmd FileType html,css EmmetInstall 
augroup end

augroup InsertModeVisualizer 
        autocmd!
        autocmd InsertEnter * set cursorline norelativenumber 
        autocmd InsertLeave * set nocursorline relativenumber
augroup end

augroup DisableAutomaticCmntInsertion 
        autocmd!
        autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup end

" Vim settings
syntax on
color delek 
set lazyredraw 
set synmaxcol=150
set nocompatible
set mouse=a
set clipboard+=unnamedplus
set tabstop=8 softtabstop=8 shiftwidth=8
set expandtab
set smartindent
set number
set relativenumber
set nowrap
set nobackup
set noswapfile
set incsearch " Incremental search
set updatetime=50
set pumheight=5 " Autocompletion menu max height
set encoding=utf-8
set pastetoggle=<F2>
set backspace=indent,eol,start " Enable backspace in insert mode
set completeopt-=preview " Hide the vim-lsc preview menu
set laststatus=2
set noshowmode

" Remaps
nnoremap <c-s> :w<CR>
inoremap <c-z> <c-o>:u<CR>
inoremap <c-s> <esc>:w<CR>
nnoremap <c-q> :qa!<CR>
nnoremap <c-p> :Files<CR>
nnoremap <space> i<space><esc>
nnoremap Y y$
nnoremap gc :!git commit -a -m ""<left>
nnoremap gpp :!git push<CR>
nnoremap gpl :!git pull<CR>
nnoremap ga :!git add ""<left>
inoremap <c-c> <esc>

nnoremap <c-a> 0
nnoremap <c-e> $
inoremap <c-a> <esc>0i
inoremap <c-e> <esc>$a
