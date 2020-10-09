
set number
set hlsearch
set ignorecase
set smartcase
"leaderキーを変更
let mapleader = "<Space>"
#Insert Mode
inoremap jj <ESC>
"Normal Mode
"clear hightlight
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>w :vsc ファイル.選択されたファイルを上書き保存<CR>
nnoremap <Leader>e :vsc 表示.ソリューションエクスプローラー<CR>
nnoremap <Leader>p :vsc 編集.ファイルに移動<CR>
nnoremap <Leader>t :vsc 編集.シンボルに移動<CR>
nnoremap <Leader>o :vsc 編集.メンバーに移動<CR>
nnoremap gf :vsc 編集.すべての参照を検索<CR>
nnoremap gD :vsc 編集.宣言へ移動<CR>
nnoremap <C-w><C-o> :vsc ファイル.このウィンドウ以外すべて閉じる<CR>
"次のタブへ
nnoremap <C-l> gt
"前のタブへ
nnoremap <C-h> gT
"5行上へ
nnoremap K 10k
"5行下へ
nnoremap J 10j
"末尾の改行を削除後に結合
nnoremap <Leader>j J
#Visual Mode
vnoremap K 5k
vnoremap J 5j
" CTRL+hjkl で上下左右のウインドウに移動
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
" ヤンクしておき、単語の上で cy で置換
" nnoremap <silent> ciy ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> cy   ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
vnoremap <silent> cy   c<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
