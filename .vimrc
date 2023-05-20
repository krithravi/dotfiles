call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'danro/rename.vim'
Plug 'ap/vim-css-color'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdtree'
	map <C-n> :NERDTreeToggle<CR>
Plug 'preservim/tagbar'
	map <C-b> :TagbarToggle<CR>
Plug 'tpope/vim-commentary'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'lervag/vimtex'
Plug 'preservim/vim-markdown'
	let g:vim_markdown_math = 1
Plug 'dense-analysis/ale'
	let b:ale_fixers = {'javascript': ['eslint', 'prettier'], 'python': ['pyright']}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>
	
call plug#end()
set number
set cursorline
set mouse=a
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set conceallevel=2

colorscheme black-ocean
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard, i use xclip

map u :undo

hi NormalColor guifg=Black guibg=Green ctermbg=120 ctermfg=232 cterm=bold
hi InsertColor guifg=Black guibg=Cyan ctermbg=81 ctermfg=232 cterm=bold
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=232 cterm=bold
hi VisualColor guifg=Black guibg=Orange ctermbg=141 ctermfg=232 cterm=bold
hi CommandColor guifg=Black guibg=Orange ctermbg=214 ctermfg=232 cterm=bold

hi hello ctermbg=236 ctermfg=15

set guicursor+=v:ver100-iCursor
