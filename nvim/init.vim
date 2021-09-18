:set rnu

call plug#begin('~/.vim/plugged')

"Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

"Icons for NERDTree, etc
Plug 'ryanoasis/vim-devicons'

"Editing
Plug 'tpope/vim-surround'

"Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Comments
Plug 'tpope/vim-commentary'

"Javascript
Plug 'pangloss/vim-javascript'

"File explorer
Plug 'scrooloose/nerdtree'

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Syntax checker
Plug 'scrooloose/syntastic'

"Beautify startup
Plug 'mhinz/vim-startify'

"Colorschemes
Plug 'mangeshrex/uwu.vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf'
Plug 'joshdick/onedark.vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'

"markdown support
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()

"Config for coc

let g:coc_global_extensions = ['coc-json']
let g:coc_node_path = substitute(system('which node'), '\n', '', '')

"Map custom shortcuts

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>

"Config for uwu

:colorscheme gruvbox

set t_Co=256
let &t_ut=''
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

nmap <F5> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc 

"set tabstops
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
