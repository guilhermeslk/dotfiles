set nocompatible

" =============== Configuração Vundle ================
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'Townk/vim-autoclose'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'

call vundle#end()

" =============== Configurações Gerais ===============
set nocompatible  
set history=700                 " Configura quantas linhas de histórico o VIM irá lembrar

filetype plugin on              " Habilita Plugins por tipo de arquivo

set autoread                    " Configura o autoread p/ quando um arquivo é modificado externamente
set number                      " Exibir num das linhas

set wrap                        " Habita o wrap

set nobackup                    " Desabilitar backup and swap
set noswapfile

set encoding=utf-8              " Enconding UTF-8
set fileencodings=utf-8

set incsearch 					" Pesquisa Incremental
set nowrap						" Desabilita Wrap

" =============== Navegação ===============
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" =============== Identação ===============

filetype indent on              " Habilita identação por tipo de arquivo

set expandtab                   " Usa espaços ao invés de tabs
set smarttab                    " Habilita o smarttab

set shiftwidth=4                " 1 tab = 4 espaços
set tabstop=4

set autoindent                  " Autoidentar
set smartindent                 " Smartindent
set showmatch                   " Exibe o fechamento dos blocos de código

" =============== Tela ===============
set t_Co=256                    " Habilita Termina de 256 cores 
syntax on                       " Habilita o Syntax Highlighting

set background=dark             " Background escuro
colorscheme Tomorrow-Night      " Configura tema Tomorrow-Night

set wildmenu                    " Habilita o Wild Menu (autocomplete)
set ruler                       " Habilita a régua
set laststatus=2                " Habilita a statusline
set so=7

" =============== Sons ===============
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" =============== Configurações MacVim / Gvim ===============
if has("gui_running")  
  set mouse=a  " Habilita o mouse

  set guioptions-=T                " Remove toolbar
  set guioptions-=r                " Remove scroll bar direita
  set guioptions-=L                " Remove scroll bar esquerda
  set guioptions-=m                " Remove menu

  set guifont=Consolas:h14         " Configura fonte

  au GUIEnter * simalt ~x          " Maximiza a janela (Gvim Windows)
endif

" =============== Atalhos ===============

nmap <c-s> :w<cr>                       " Comando Salvar (:w)
map <silent> <C-k> :NERDTreeToggle<CR>  " NERDTree

" =============== Plugins ===============
let g:airline_theme='tomorrow'        " Airline Plugin Theme
let g:NERDTreeDirArrows=1
