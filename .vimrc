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
Plugin 'thaerkh/vim-indentguides'
	let g:indentguides_spacechar = '|'
	let g:indentguides_tabchar = '▏'
	let g:indentguides_firstlevel = get(g:, 'indentguides_firstlevel', 1)
Plugin 'tribela/vim-transparent'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
Plugin 'vim-airline/vim-airline'
	let g:airline_section_z = '%l/%L :%c %p%%'
	"let g:airline#extensions#tabline#enabled = 1
Plugin 'vim-airline/vim-airline-themes'
	let g:airline_theme='angr'
call vundle#end()

set number
set cursorline
set mouse=a
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

colorscheme PaperColor
"let g:tex_conceal=""
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard, i use xclip

map u <Nop>
autocmd BufWritePre * :%s/\s\+$//e

