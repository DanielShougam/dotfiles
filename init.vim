call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/euclio/vim-markdown-composer'

call plug#end()

set undofile
set undodir=~/.vim/undo

nmap <F2> :TagbarToggle<CR>

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType tex inoremap ;i $\textit{}$<Space><++><Esc>T{i
autocmd FileType tex inoremap ;b $\textbf{}$<Space><++><Esc>T{i
autocmd FileType tex inoremap ;c <Esc>:w<Enter>:vs<Enter><C-w><C-w>:terminal<Enter>apdflatex<Space>file.tex<Enter><C-\><C-n>

set bg=light
set relativenumber
set number

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
