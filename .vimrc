
let mapleader = "\<Space>"

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" CTRL+hjkl で上下左右のウインドウに移動
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext
" ヤンクしておき、単語の上で cy で置換
" nnoremap <silent> ciy ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> cy   ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
vnoremap <silent> cy   c<C-r>0<ESC>:let@/=@1<CR>:noh<CR>

" Surround a word with quotes, single quotes, parens, brackets, braces, etc.
"   requires and powered by the plugin surround.vim :-)
" (Note) for visual blocks, use S command from surround.vim
nmap  <leader>s" ysiw"
nmap  <leader>s' ysiw'
nmap  <leader>s` ysiw`
nmap  <leader>s* ysiw*l
nmap  <leader>s_ ysiw_l
nmap  <leader>s~ ysiw~l
nmap  <leader>s$ ysiw$
nmap  <leader>s( ysiw(
nmap  <leader>s) ysiw)
nmap  <leader>s[ ysiw[
nmap  <leader>s] ysiw]
nmap  <leader>s{ ysiw{
nmap  <leader>s} ysiw}
" ask function: e.g., word -> function(word)
nmap  <leader>sf ysiwf

vmap  <leader>s" S"
vmap  <leader>s' S'
vmap  <leader>s` S`
vmap  <leader>s* S*
vmap  <leader>s_ S_
vmap  <leader>s~ S~
vmap  <leader>s$ S$
vmap  <leader>s( S(
vmap  <leader>s) S)
vmap  <leader>s[ S[
vmap  <leader>s] S]
vmap  <leader>s{ S{
vmap  <leader>s} S}
" ask function: e.g., word -> function(word)
vmap  <leader>sf Sf

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap J 10j
nnoremap K 10k
