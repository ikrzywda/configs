packadd vimball

set colorcolumn=80
set cursorline
colorscheme onehalfdark

set tabstop=4
set shiftwidth=4
set expandtab

set nowrap
set nu rnu

inoremap jj <Esc>
nnoremap `` :w<CR>
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

let g:ale_linters = {'cpp':['gcc']}
let g:ale_linters = {'c':['gcc']}

augroup ReduceNoise
    autocmd!
    " Automatically resize active split to 85 width
    autocmd WinEnter * :call ResizeSplits()
augroup END

function! ResizeSplits()
    set winwidth=85
    wincmd =
    wincmd _
endfunction
