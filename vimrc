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
nmap :W :w
nmap <tab> gt
nmap <s-tab> gT
nmap <F2> :BufExplorer<Enter>
nmap <F3> :noh<Enter>
nmap <F4> gg=G''
vmap <F5> I#<Esc>

augroup filetypedetect
  autocmd BufRead,BufNewFile *.prawn set filetype=ruby
augroup END
