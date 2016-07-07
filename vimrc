set nospell
set foldmethod=syntax
colorscheme solarized
set nolist
set clipboard=unnamed

autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType JSON setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufRead *.html setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufRead *.css setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufRead *.pug setlocal expandtab shiftwidth=2 softtabstop=2

nnoremap <leader>sp :CtrlSF<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'

let g:neocomplcache_enable_at_startup = 0
let g:indent_guides_enable_on_vim_startup = 0

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :e<CR>
nmap <Leader>W :wa<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>x :x<CR>
nmap <Leader>m :!

" *.cpp 和 *.h 间切换
nmap <Leader>ss :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>
nmap <Leader>vv :AV<CR>

"auto build
autocmd BufRead *.py nnoremap <buffer> <F9> :wa<CR> :exec '!python' shellescape(@%, 1)<cr>
autocmd BufRead *.cpp nnoremap <buffer> <F9> :wa<CR> :!g++ -std=c++11 % -o %< && ./%< && rm %<<CR>
autocmd BufRead *.c nnoremap <buffer> <F9> :wa<CR> :!gcc % -o %< && ./%< && rm %<<CR>
autocmd BufRead *.html nnoremap <buffer> <F9>  :wa<CR> :!open %<CR>
autocmd BufRead *.js nnoremap <buffer> <F9>  :wa<CR> :!node %<CR>
autocmd BufRead *.pug nnoremap <buffer> <F9>  :wa<CR> :!pug -P %<CR>
autocmd BufRead *.md nnoremap <buffer> <F9>  :wa<CR> :!open %<CR>

nnoremap <buffer> <F10> :wa<CR> :!make && ./%< && make clean<CR>
"nnoremap <buffer> <F11>
nnoremap <buffer> <F12> :!subl %<CR>
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1
