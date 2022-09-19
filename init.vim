set shiftwidth=2
syntax=on
set number
set tabstop=2
set incsearch
set clipboard=unnamed
set cursorline
set autoindent
set expandtab
set autowrite
"set foldmethod=indent
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
Plug 'https://github.com/Quramy/tsuquyomi' "TypeScriptのプラグイン
Plug 'https://github.com/vim-syntastic/syntastic' "シンタックス
Plug 'Shougo/vimproc.vim', {'do' : 'make'} "Tsuquyomiで必要らしい
Plug 'https://github.com/ycm-core/YouCompleteMe' "YouCompleteMe 補完プラグイン
Plug 'vim-test/vim-test' " テストプラグイン
Plug 'https://github.com/vim-scripts/ScrollColors' " カラースキームをブラウズする
Plug 'kyazdani42/blue-moon' " blue-moonというカラースキーム
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
nnoremap <C-t> :NERDTreeToggle<CR>
command! -nargs=0 Format :call CocAction('format')
command! Solitary :echo '人生字を識るは憂患の始まり'
" command! SS :source ~/.config/nvim/init.vim
command! SS :so ~/.config/nvim/init.vim
command! Co :colorscheme
command  Eve :colorscheme evening
command  Horizon :colorscheme horizon
nmap <silent> <space>fmt <Plug>(coc-format)
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nnoremap <Leader>o :<C-u>execute "OpenBrowser" "file:///" . expand('%:p:gs?\\?/?')<CR>
let g:indent_guides_enable_on_vim_startup = 1
let g:gitgutter_highlight_lines = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.ctp,*.php,*.vue'

set termguicolors
" colorscheme slate
" colorscheme horizon
" colorscheme hybrid
" colorscheme blue
" colorscheme evening
colorscheme blue-moon
let g:lightline = { 'colorscheme': 'blue-moon' }
" let g:lightline = {}
" let g:lightline.colorscheme = 'horizon'

" Rubyの文法チェック"
augroup rbsyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END 

function! AnimalGreet(animal)
  return a:animal . ' say hello!'
endfunction

" SyntasticのデフォルトSetting"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" TusuquyomiとSyntasticの統合設定"
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

" Tsuquyomiのキーマッピング無効化"
let g:tsuquyomi_disable_default_mappings = 1
