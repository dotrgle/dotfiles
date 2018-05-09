call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/lightline.vim'
Plug 'maxst/flatcolor'
Plug 'challenger-deep-theme/vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary' " comment stuff out
" Plug 'bfredl/nvim-ipy'
Plug 'hkupty/iron.nvim'
call plug#end()
