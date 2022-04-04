set shiftwidth=2
syntax=on
set number
set tabstop=2
set incsearch
set cursorline
set autoindent
set clipboard=unnamed
set expandtab

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'lambdalisue/fern.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection.git'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/tyru/open-browser.vim.git'
Plug 'https:/github.com/lambdalisue/gina.vim.git'
Plug 'https://github.com/tyru/open-browser.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/simeji/winresizer.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/Shougo/neomru.vim.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
call plug#end()


let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap <silent> jj <ESC>
nnoremap <silent> un :<C-u>Unite buffer<CR>
noremap ss ^
noremap ;; $
nnoremap <C-t> :NERDTreeToggle<CR>
command! -nargs=0 Format :call CocAction('format')
nmap <silent> <space>fmt <Plug>(coc-format)
let g:indent_guides_enable_on_vim_startup = 1

