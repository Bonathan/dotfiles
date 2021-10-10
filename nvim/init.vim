 call plug#begin('~/.vim/autoload')

 "nerdtree
 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'ryanoasis/vim-devicons'

 "autocomplete brackets, quotes, etc
 Plug 'jiangmiao/auto-pairs'
 Plug 'tpope/vim-surround'

 "autocompletion
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 "colorschemes
 Plug 'mangeshrex/uwu.vim'
 Plug 'gruvbox-community/gruvbox'
 Plug 'arzg/vim-colors-xcode'

 "javascript
 Plug 'maksimr/vim-jsbeautify'
 Plug 'pangloss/vim-javascript'

 "typescript
 Plug 'leafgarland/typescript-vim'

 "Flutter
 Plug 'dart-lang/dart-vim-plugin'
 Plug 'natebosch/vim-lsc'
 Plug 'natebosch/vim-lsc-dart'

 "beautify startup
 Plug 'mhinz/vim-startify'

 "vim statusline
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 
 call plug#end()

 let g:lsc_auto_map=v:true

 nnoremap <C-e> :NERDTreeToggle <CR>
 nnoremap <C-t> :tabnew <CR>
 nnoremap <C-c> :tabclose <CR>

 :set rnu

 :set nowrap
 :set tabstop=2
 :set softtabstop=2
 :set shiftwidth=2
 :filetype indent on
 :set smartindent

 colorscheme xcodedark

 let g:airline_theme='atomic'
 let g:airline_symbols_ascii=1
 let g:airline_detect_spell=1
 let g:airline_detect_spelllang=1
 let g:airline#extensions#battery#enabled = 1
" let g:airline_statusline_ontop=1

 :set encoding=utf-8
 :set fileencoding=utf-8

 " file specific indentation and additional options
 " svelte
 au! BufNewFile,BufRead *.svelte set ft=html

 " javascript
 
 autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

