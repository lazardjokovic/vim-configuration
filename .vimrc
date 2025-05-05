" ================================
" Vim Configuration (.vimrc)
" ================================

" Initialize vim-plug plugin manager
call plug#begin()

" Sensible defaults for Vim
Plug 'tpope/vim-sensible'

" Fuzzy Finder (FZF) + Vim integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File explorer (NERDTree)
Plug 'preservim/nerdtree'

" Git integration (Fugitive)
Plug 'tpope/vim-fugitive'

" Color scheme: Gruvbox
Plug 'morhetz/gruvbox'

" Finalize plugin section
call plug#end()

" ----------------------------
" General Settings
" ----------------------------

" Enable dark background and Gruvbox color scheme
set background=dark
colorscheme gruvbox

" Use fd for FZF, show hidden files, respect .fdignore, exclude .git
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --strip-cwd-prefix --exclude .git'

" Open splits to the right
set splitright

" Tabs and indentation
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" Show relative line numbers; toggle with F2
set relativenumber
nnoremap <F2> :set relativenumber!<CR>

" ----------------------------
" Plugin Mappings
" ----------------------------

" NERDTree mappings
nnoremap <C-n> :NERDTreeToggle<CR>

" Automatically open NERDTree if opening a directory
autocmd VimEnter * if argc() == 0 && isdirectory(expand('%')) | NERDTree | wincmd p | endif

" Close Vim if NERDTree is the last window
autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

" FZF mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<Space>
nnoremap <C-S-p> :FdExact<Space>

" Window navigation (move between split panes)
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h

" ----------------------------
" Custom Commands
" ----------------------------

" Rg command: exact string search (fixed-strings)
" Matches the exact string you type, including hyphens.
" Example: :Rg net-imap → matches 'net-imap' anywhere
command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --glob "!.git/**" --ignore-file .fdignore --fixed-strings --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'prompt': 'Rg> '}), <bang>0)

" Custom command: FdExact
" Lists files using fd, but filters exact name matches using grep.
" Example:
" :FdExact net-imap → shows only files whose names contain 'net-imap' exactly (case-sensitive)
command! -nargs=* FdExact
  \ call fzf#vim#files('', fzf#vim#with_preview({'source': 'fd --type f --hidden --exclude .git | grep '.shellescape(<q-args>)}))

