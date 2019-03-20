set number
set colorcolumn=120
set splitright
syntax on
set background=dark
colorscheme solarized

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set nofoldenable

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" tagbar
nmap <F8> :TagbarToggle<CR>
" NERDTree
nmap <F6> :NERDTreeToggle<CR>
" escape key
inoremap jk <esc>
inoremap kj <esc>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" syntastic options
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['flake8', 'pep8']
"let g:syntastic_typescript_checkers = ['eslint']
"let g:syntastic_quiet_messages = { 'regex': 'Functions declared within loops referencing an outer scoped variable may lead to confusing semantics.' }

" ctrlp options
let g:ctrlp_max_files = 20000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_working_path_mode = 'ra'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" NerdTree stuff
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let c_no_curly_error=1

" vim-notes
let g:notes_directories = ['~/Desktop/notes']
let g:notes_suffix = '.txt'

call plug#begin('~/.vim/plugged')
" directory navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" (file) search
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

" linter
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

" git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" commenting support
Plug 'scrooloose/nerdcommenter'

" display
Plug 'vim-airline/vim-airline'

" completion
Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'

" language
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug'
Plug 'leafgarland/typescript-vim'
Plug 'isRuslan/vim-es6'

" misc
Plug 'terryma/vim-multiple-cursors'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
call plug#end()
