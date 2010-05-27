source ~/.vim/vimrc

colorscheme desert
set nu
set sts=2
set sw=2
let g:fuzzy_ignore = "gems/*"
set guifont=monaco
set guioptions-=m
set guioptions-=T
let g:fuzzy_ignore = "gems/*"
let g:fuzzy_ignore = "vendor/*"
let g:fuzzy_ignore = "db/asp/minisite_images/*"

nmap <tab> gt
nmap <s-tab> gT
nmap <F2> :BufExplorer<Enter>
nmap <F3> :noh<Enter>
nmap <F4> gg=G''
map <F5> I#<Esc>
map <C-C> ,c<Space>
nnoremap <silent> <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

augroup filetypedetect
  autocmd BufRead,BufNewFile *.prawn set filetype=ruby
  autocmd BufRead,BufNewFile *.atom.build set filetype=ruby
augroup END
