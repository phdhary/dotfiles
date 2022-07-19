" vim:foldmethod=marker
" Main Options {{{
let &t_ut=''
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" base
set nocompatible
set shortmess+=atI
set laststatus=2
set timeoutlen=500
set noundofile
set nobackup
set magic
set noerrorbells
set autoread
set history=2000
" show location
set cul
" movement
set scrolloff=7
" show
set rnu
set noshowmode
set number
set numberwidth=2
set confirm
set title
set wrap
" search
set incsearch
set smartcase
set ignorecase
" tab
set expandtab
set smarttab
set shiftround
" indent
set smartindent
set shiftwidth=2
set tabstop=4
set softtabstop=4
" map leader
nnoremap <SPACE> <Nop>
let mapleader=" "
" }}}
" Netrw Configuration {{{ 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 18
let g:netrw_keepdir = 0
filetype plugin on
" }}}
" Plugins {{{ 
call plug#begin()
" Tim Pope's {{{
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
"}}}
" Nice to have plugins{{{
    Plug 'junegunn/fzf'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'andymass/vim-matchup'
    Plug 'justinmk/vim-sneak'
" }}}
    " UI related plugins {{{
    Plug 'ap/vim-buftabline'
    Plug 'psliwka/vim-smoothie'
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    Plug 'machakann/vim-highlightedyank'
    Plug 'itchyny/lightline.vim'
    " }}}
call plug#end()
let g:sneak#label = 1
" }}}
" Lightline Configuration {{{
let g:lightline = {
      \ 'background' : 'light',
      \ 'colorscheme': 'rosepine',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'cocstatus': 'coc#status'
      \ },
      \ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
" }}}
" Theme Toggle {{{
function! ToggleThemeMode()
 if g:colors_name == "catppuccin_latte"
   colorscheme catppuccin_mocha
 else
   colorscheme catppuccin_latte
 en
endfunction 
" }}}
" Theme Configuration {{{
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
    set termguicolors
  endif
endif
syntax on
 " latte, frappe, macchiato, mocha
colorscheme catppuccin_mocha
" }}}
" Coc Configuration {{{
set hidden
set encoding=utf-8
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> rn <Plug>(coc-rename)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" }}}
" Custom Key Mapping {{{
set wildchar=<TAB>
map             <silent><C-N>           :Lexplore<CR>
nmap            <silent><TAB>           :bnext<CR>
nmap            <silent><S-TAB>         :bprev<CR>
nmap            <silent><leader>x       :bd<CR>
nmap            <silent><leader>n       :set nu!<CR>
nmap            <silent><leader>rn      :set rnu!<CR>
nmap            <silent><leader>ff      :FZF<CR>
nmap            <silent><leader>es      :e ~/.vimrc<CR>
nmap                    <leader>th      :colorscheme<SPACE><TAB>
nmap                    <leader>tt      :call ToggleThemeMode()<CR>
nmap                    <leader>rl      :source ~/.vimrc<CR>
imap                    <C-l>           <Right>
imap                    <C-j>           <Down>
imap                    <C-k>           <Up>
nnoremap                <C-h>           <C-w>h
nnoremap                <C-l>           <C-w>l
nnoremap                <C-k>           <C-w>k
nnoremap                <C-j>           <C-w>j
nnoremap        <silent><S-b>           :enew<CR>
nnoremap        <silent><C-s>           :w<CR>
nnoremap        <silent><ESC>           :noh<CR>
nnoremap        <silent><leader>        :WhichKey '<Space>'<CR>
" }}}
