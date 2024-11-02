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
	let g:vim_markdown_folding_disabled = 1
	let g:vim_markdown_frontmatter = 1
	let g:vim_markdown_math = 1
	let g:vim_markdown_strikethrough = 1
	let g:vim_markdown_borderless_table = 1
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-rmarkdown'
	
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

set guicursor+=v:ver100-iCursor

" Disable Copilot by default
let g:copilot_enabled = 0

" Autocmd to enable Copilot in ~/code
augroup CopilotConfig
  autocmd!
  autocmd BufEnter ~/code/coursework/* let g:copilot_enabled = 1
  autocmd BufLeave ~/code/* let g:copilot_enabled = 0
augroup END
