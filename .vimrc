se rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'jiangmiao/auto-pairs'
Plugin 'danro/rename.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/mycoolsnippets']
Plugin 'NLKNguyen/papercolor-theme'
	let g:transparent_background=1
Plugin 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
Plugin 'vim-airline/vim-airline'
	let g:airline_section_z = '%l/%L :%c %p%%'
Plugin 'vim-airline/vim-airline-themes'
	let g:airline_theme='angr'
Plugin 'ap/vim-css-color'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()

set number
set cursorline
set mouse=a
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

colorscheme hello
"let g:tex_conceal=""
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard, i use xclip

map u <Nop>
autocmd BufWritePre * :%s/\s\+$//e
