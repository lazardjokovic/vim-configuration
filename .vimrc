call plug#begin()

" Sensible defaults for Vim
Plug 'tpope/vim-sensible'

" Fuzzy Finder for quick file and text search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NERDTree: Directory tree viewer
Plug 'preservim/nerdtree'

" Git integration
Plug 'tpope/vim-fugitive'

" Color scheme: Gruvbox
Plug 'morhetz/gruvbox'

" Use fd for FZF and show hidden files, while respecting .fdignore
let $FZF_DEFAULT_COMMAND = 'fdfind --type f --hidden --strip-cwd-prefix'

call plug#end()

" Open new window (split) to the right
set splitright

" Enable dark mode for Gruvbox
set background=dark
colorscheme gruvbox

" TAB setting
set autoindent noexpandtab tabstop=4 shiftwidth=4

" Line numbers and toggling
set number
set relativenumber
nnoremap <F2> :set relativenumber!<CR>

" NERDTree mappings
" Toggle NERDTree visibility with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Automatically open NERDTree when starting Vim in a directory
autocmd VimEnter * if argc() == 0 && isdirectory(expand('%')) | NERDTree | wincmd p | endif

" Close Vim if NERDTree is the last open window
autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

" FZF mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-S-g> :Rg<Space>

" Window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

