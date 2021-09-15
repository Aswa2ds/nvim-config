" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
let mapleader =","

" Behavior
syntax on
syntax enable

filetype on
filetype plugin on
filetype indent on

set ttimeoutlen=0
set updatetime=300
set splitbelow splitright
set conceallevel=0

set autoindent
set smartindent
set cindent
set cinoptions=g0,:0,N-s,(0

set noexpandtab
set foldmethod=indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set clipboard+=unnamed

set wrap linebreak nolist
set shortmess+=c
set whichwrap+=<,>,h,l
set virtualedit=block
set backspace=2
set sidescroll=10

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoread
set autowrite
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.nvim/undodir
set undofile
nnoremap c "_c

set nocompatible
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" vim-interface
set t_Co=256
set termguicolors
set noeb
set mouse=a
set hidden
set showcmd
set ruler
set cursorline
set cursorcolumn
set number relativenumber
set cmdheight=2
set laststatus=2
set showtabline=2
set noshowmode
set nofoldenable
set signcolumn=yes

" Command Completion
set wildmenu
set wildmode=longest:full,full
set completeopt=menuone,noselect

" Vim-Plug init
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

" Vim-Plug Plugins
call plug#begin('~/.config/nvim/plugged')

" Vim-Plug ---- Completion
" Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'jiangmiao/auto-pairs'
Plug 'buoto/gotests-vim'

" Vim-Plug ---- lang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Vim-Plug ---- editor
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/vim-cursorword'
Plug 'terrortylor/nvim-comment'
Plug 'simrat39/symbols-outline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'romgrk/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'SmiteshP/nvim-gps'
Plug 'andymass/vim-matchup'
Plug 'rhysd/accelerated-jk'
Plug 'hrsh7th/vim-eft'
Plug 'jdhao/better-escape.vim'
Plug 'romainl/vim-cool'
Plug 'easymotion/vim-easymotion'
Plug 'karb94/neoscroll.nvim'
Plug 'vimlab/split-term.vim'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'rmagatti/auto-session'

" Vim-Plug ---- ui
Plug 'sainnhe/edge'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'folke/zen-mode.nvim'
Plug 'folke/twilight.nvim'
" Plug 'airblade/vim-gitgutter'

"Vim-Plug ----- tools
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'tami5/sql.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'folke/which-key.nvim'
Plug 'dstein64/vim-startuptime'
Plug 'gelguy/wilder.nvim'
Plug 'romgrk/fzy-lua-native'
Plug 'majutsushi/tagbar'
Plug 'lvht/tagbar-markdown'
Plug '907th/vim-auto-save'
Plug 'ferrine/md-img-paste.vim' 

call plug#end()

" Vim-Plug edge
set background=light
" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
let g:edge_show_eob = 1
let g:edge_better_performance = 1
colorscheme edge

" Vim-Plug lualine
" plugin/lualine.lua

" Vim-Plug nvim-tree
" plugin/nvim-tree.lua

" Vim-Plug nvim-bufferline.lua
" plugin/bufferline.lua
noremap <A-j> :BufferLineCycleNext<cr>
noremap <A-k> :BufferLineCyclePrev<cr>
nnoremap <A-S-j> :BufferLineMoveNext<CR>
nnoremap <A-S-k> :BufferLineMovePrev<CR>
" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent><leader>be :BufferLineSortByExtension<CR>
nnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

" Vim-Plug indent-blankline.nvim
" plugin/indent.lua

" Vim-Plug matchup
let g:matchup_matchparen_offscreen = {'method': 'popup'}

" Vim-Plug easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

" Vim-Plug tagbar
let g:tagbar_auto_peview = 1
let g:tagbar_sort = 0

" Vim-Plug vim-auto-save
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Vim-Plug coc.nvim
" Vim-Plug coc-snippet
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Automatically change work directory
autocmd BufEnter * silent! lcd %:p:h

nnoremap <leader><leader>v :tabe $MYVIMRC<cr>

" Vim Mapping
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <A-[> :vertical resize -5<CR>
nnoremap <A-]> :vertical resize +5<CR>
nnoremap <C-q> :wq<CR>
nnoremap <A-q> :bw!<CR>

inoremap <C-s> <Esc>:w<CR>
inoremap <C-q> <Esc>:wq<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Plugin Mapping
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>ps :PlugUpdate<cr>
nnoremap <leader>pc :PlugClean<cr>

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>nf :NvimTreeFindkFile<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>

nnoremap <leader>fp :Telescope project<CR>
nnoremap <leader>fe :DashboardFindHistory<CR>
nnoremap <leader>fr :Telescope frecency<CR>
nnoremap <leader>ff :DashboardFindFile<CR>
nnoremap <leader>sc :DashboardChangeColorscheme<CR>
nnoremap <leader>fw :DashboardFindWord<CR>
nnoremap <leader>fn :DashboardNewFile<CR>
nnoremap <leader>fb :Telescope file_browser<CR>
nnoremap <leader>fg :Telescope git_files<CR>

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

nmap ; <Plug>(eft-repeat)
xmap ; <Plug>(eft-repeat)

nmap f <Plug>(eft-f)
xmap f <Plug>(eft-f)
omap f <Plug>(eft-f)
nmap F <Plug>(eft-F)
xmap F <Plug>(eft-F)
omap F <Plug>(eft-F)

nmap t <Plug>(eft-t)
xmap t <Plug>(eft-t)
omap t <Plug>(eft-t)
nmap T <Plug>(eft-T)
xmap T <Plug>(eft-T)
omap T <Plug>(eft-T)

nnoremap <C-w>t :Term<CR>
nnoremap <C-w>T :VTerm<CR>

nnoremap <leader>tt :TagbarToggle<CR>

" navigate chunks of current buffer
nmap [c <Plug>(coc-git-prevchunk)
nmap ]c <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

nmap <leader>c :CocList

autocmd FileType go nmap <leader>gb <Plug>(go-build)
autocmd FileType go nmap <leader>gr <Plug>(go-run)
autocmd FileType go nmap <leader>gi :GoImpl<CR>
autocmd FileType go nmap <leader>gt <Plug>(go-test)
autocmd FileType go nmap <leader>gtf <Plug>(go-test-func)
autocmd FileType go nmap <C-[> <Plug>(go-def-pop)
autocmd FileType go nmap <leader>gfs :GoFillStruct<CR>
autocmd FileType go nmap <leader>gts :GoTests<CR>
autocmd FileType go nmap <leader>gds :GoDebugStart<CR>
autocmd FileType go nmap <leader>ds :GoDebugStop<CR>
autocmd FileType go nmap <leader>dt :GoDebugTest<CR>
autocmd FileType go nmap <leader>dtf :GoDebugTestFunc<CR>
autocmd FileType go nmap <leader>db :GoDebugBreakpoint<CR>
autocmd FileType go nmap <leader>dc :GoDebugContinue<CR>
autocmd FileType go nmap <leader>dr :GoDebugRestart<CR>
autocmd FileType go nmap <leader>dn :GoDebugNext<CR>
autocmd FileType go nmap <leader>di :GoDebugStep<CR>
autocmd FileType go nmap <leader>do :GoDebugStepOut<CR>
