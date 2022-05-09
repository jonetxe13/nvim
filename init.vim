:set number
:set rnu
:highlight Pmenu ctermbg=lightgray
:highlight Pmenu ctermfg=black
" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
"prettier -> :Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"autocompletions"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'kosayoda/nvim-lightbulb'
Plug 'github/copilot.vim'

Plug 'othree/html5.vim'
Plug 'turbio/bracey.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'andymass/vim-matchup'
Plug 'tpope/vim-commentary'
Plug 'puremourning/vimspector'
Plug 'sheerun/vim-polyglot'
Plug 'tmsvg/pear-tree'
Plug 'junegunn/fzf'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'

call plug#end()

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

"terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'bash' | :startinsert | endif
" open terminal on ctrl+t
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>

"buscar archivos
nnoremap <C-p> :FZF<CR>

:colorscheme gruvbox

syntax on
