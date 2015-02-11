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

let g:seoul256_background = 234 " Configura contraste do bg do tema
colo seoul256                   " Configura o tema

set wildmenu                    " Habilita o Wild Menu
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
  set guioptions-=r                " Remove right-hand scroll bar
  set guioptions-=L                " Remove left-hand scroll bar

  set guifont=Consolas:h14         " Configura fonte

"  au GUIEnter * simalt ~x         " Maxime gvim window
endif

" =============== Atalhos ===============

nmap <c-s> :w<cr>                       " Comando Salvar (:w)
map <silent> <C-k> :NERDTreeToggle<CR>  " NERDTree

" =============== Plugins ===============
let g:airline_theme='luna'        " Airline Plugin Theme
