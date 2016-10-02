set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" All of your Plugins must be added before the following line
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'
Plugin 'majutsushi/tagbar'
Plugin 'digitaltoad/vim-jade'
Plugin 'marijnh/tern_for_vim'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements

syntax on
set pastetoggle=<F3>
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set hlsearch
set ru
set nu
set ic
set incsearch
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark


" for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_key_invoke_completion = '<C-\>' 
set completeopt=menuone

" for VirtualCurser
" Default mapping
let g:multi_cursor_next_key='<C-c>'
let g:multi_cursor_prev_key='<C-z>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" for TagBar
map <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
autocmd bufenter * if (exists("b:TagbarType") && winnr("$") == 1) | q | endif

" for NerdTree
map <F7> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" for TextAlignMent
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" for ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

" for air-line
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" auto close tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
