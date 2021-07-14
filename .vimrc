call plug#begin()
Plug 'junegunn/seoul256.vim'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'preservim/NERDTree'
call plug#end()
set laststatus=2
let g:lightline = {
	              \ 'colorscheme': 'seoul256',
      \ 'active': {
	              \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
	              \   'helloworld': "Don't be evil!"
      \ },
      \ }
let g:lsc_auto_map = v:true
:colorscheme seoul256
autocmd vimenter * NERDTree | wincmd p
:syntax on

"~~EXTERNAL CONFIG~~
"source ~/.vim/autoload/autoclose.vim

inoremap { {}<left>
inoremap {{ {
	inoremap {} {}
	inoremap [ []<left>
	inoremap [[ [
		inoremap [] []
		inoremap ( ()<left>
		inoremap (( (
		inoremap () ()
		inoremap " ""<left>
		inoremap "" ""
		inoremap ' ''<left>
		inoremap '' ''
