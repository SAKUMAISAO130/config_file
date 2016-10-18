"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" vi互換動作の無効化
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
set nocompatible





"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" 画面表示の設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
set number         " 行番号を表示する
set laststatus=2   " ステータス行を常に表示
set cmdheight=3    " メッセージ表示欄を2行確保
"set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title





"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" カーソル移動関連の設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""

set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=16                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う






"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" ファイル処理関連の設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""

set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす





"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" 検索/置換の設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る






"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" タブ/インデントの設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する






"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" 動作環境との統合関連の設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
"set iminsert=2






"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" コマンドラインの設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000






"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" ビープの設定
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない





"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" キーマッピング
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
nnoremap nd  :NERDTreeToggle<CR>

nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;

nnoremap q  :q!<CR>
nnoremap wq :wq<CR>
nnoremap w  :w<CR>

"""""""""""""""""""""""""""""""""""""
" unite.vimの設定
noremap <C-U><C-F> :Unite -buffer-name=file file<CR> " ファイル一覧
noremap <C-U><C-R> :Unite file_mru<CR> " 最近使ったファイル一覧

au FileType unite nnoremap <silent> <buffer> <expr> <C-i> unite#do_action('split') " ウィンドウを分割して開く
au FileType unite inoremap <silent> <buffer> <expr> <C-i> unite#do_action('split')

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q








"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" Ohters
""""""""""""""""""""""""""""" 

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

"""""""""""""""""""""""""""""
"インサートモードで始末に移動するエイリアス
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a










""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
" NeoBundle
" 下記にてインストールする
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 追加プラグイン"

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" emmetプラグイン
NeoBundle 'mattn/emmet-vim'

" シンタックスエラー
NeoBundle 'scrooloose/syntastic'

" molokai カラースキーム
NeoBundle 'tomasr/molokai'

" ステータスバーカスタマイズ
NeoBundle 'itchyny/lightline.vim'

" 過去の編集ファイルを検索
NeoBundle 'Shougo/neomru.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
