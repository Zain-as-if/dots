set number

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'adelarsq/image_preview.nvim'

highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

call plug#end()
