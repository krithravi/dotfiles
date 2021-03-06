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
"autocmd BufWritePre * :%s/\s\+$//e

hi NormalColor guifg=Black guibg=Green ctermbg=85 ctermfg=232 cterm=bold
hi InsertColor guifg=Black guibg=Cyan ctermbg=81 ctermfg=232 cterm=bold
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=232 cterm=bold
hi VisualColor guifg=Black guibg=Orange ctermbg=141 ctermfg=232 cterm=bold
hi CommandColor guifg=Black guibg=Orange ctermbg=218 ctermfg=232 cterm=bold

hi hello ctermbg=236 ctermfg=15

set statusline=

set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualColor#%{(mode()=='V')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualColor#%{(mode()=='vb')?'\ \ VISUAL\ ':''}
set statusline+=%#CommandColor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#hello#

set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=%y
set statusline+=\ %5.l/%L
set statusline+=\ :%3.c
set statusline+=\ %3.3p%%\ 
