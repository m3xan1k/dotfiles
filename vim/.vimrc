syntax on

colorscheme bruin

" tab size
set tabstop=4

" autoindentation
set autoindent

" insert space for tabs
set expandtab

" delete multiple spaces with one move
" set softtabstop=4

" highlight matching brackets
set showmatch

" enable mouse
set mouse=v

" wrap text
set wrap

" display 5 lines when scroll with mouse
set scrolloff=5

" encoding
set encoding=utf-8

" For plug-ins to load correctly
filetype plugin indent on

" Turn off modelines
set modelines=0

" Fix common backspace problems
set backspace=indent,eol,start

" Speed up scrolling
set ttyfast

" Status bar
set laststatus=2

" Format status line
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

" Display options
set showmode
set showcmd

" highlight matching pairs of brackets. Use '%' to jump between them
set matchpairs+=<:>

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv

" auto-pairs
"au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" code folding
set foldmethod=indent
set foldlevel=99

" tags
map <leader>t :TagbarToggle<CR>

" connect plugins
call plug#begin()
    Plug 'preservim/NERDTree'
    Plug 'davidhalter/jedi-vim'
    Plug 'nvie/vim-flake8'
    Plug 'tpope/vim-surround'
    Plug 'majutsushi/tagbar'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'lepture/vim-jinja'
    Plug 'pangloss/vim-javascript'
    Plug 'alvan/vim-closetag'
call plug#end()

" NERDTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" jedi settings
" I don't want the docstring window to popup during completion
autocmd FileType python setlocal completeopt-=preview

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" flake8 settings
let g:flake8_quickfix_height=3
autocmd BufWritePost *.py call Flake8()
