set shiftwidth=2
syntax=on
set number
set tabstop=2
set incsearch
set cursorline
set autoindent
set clipboard=unnamed
set expandtab
set autowrite
ab ab 今日はいい天気ですね


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
Plug 'b4b4r07/vim-shellutils'
Plug 'https://github.com/alvan/vim-closetag.git'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/tyru/open-browser.vim.git'
Plug 'https:/github.com/lambdalisue/gina.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/simeji/winresizer.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/Shougo/neomru.vim.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/vimplugin/project.vim'
call plug#end()


let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap <silent> jj <ESC>
nnoremap <silent> un :<C-u>Unite buffer<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>
noremap ss ^
noremap ;; $
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-j> <C-^>
nnoremap <C-t> :NERDTreeToggle<CR>
command! -nargs=0 Format :call CocAction('format')
nmap <silent> <space>fmt <Plug>(coc-format)
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nnoremap <Leader>o :<C-u>execute "OpenBrowser" "file:///" . expand('%:p:gs?\\?/?')<CR>
let g:indent_guides_enable_on_vim_startup = 1
let g:gitgutter_highlight_lines = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.ctp,*.php,*.vue'

set termguicolors
colorscheme horizon
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" Rubyの文法チェック"
augroup rbsyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END 

