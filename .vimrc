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
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
call plug#end()

set number
set cursorline
set mouse=a
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

colorscheme black-ocean
"let g:tex_conceal=""
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard, i use xclip

map u :undo
"autocmd BufWritePre * :%s/\s\+$//e

hi NormalColor guifg=Black guibg=Green ctermbg=120 ctermfg=232 cterm=bold
hi InsertColor guifg=Black guibg=Cyan ctermbg=81 ctermfg=232 cterm=bold
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=232 cterm=bold
hi VisualColor guifg=Black guibg=Orange ctermbg=141 ctermfg=232 cterm=bold
hi CommandColor guifg=Black guibg=Orange ctermbg=214 ctermfg=232 cterm=bold

hi hello ctermbg=236 ctermfg=15

set guicursor+=v:ver100-iCursor

function MyCustomHighlights()
    hi semshiGlobal          ctermfg=red guifg=#ff0000
	hi semshiLocal           ctermfg=209 guifg=#ff875f
	hi semshiGlobal          ctermfg=36  guifg=#0faf87
	hi semshiImported        ctermfg=36  guifg=#0faf87 cterm=bold gui=bold
	hi semshiParameter       ctermfg=75  guifg=#5fafff
	hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
	hi semshiFree            ctermfg=218 guifg=#ffafd7
	hi semshiBuiltin         ctermfg=122 guifg=#87ffd7
	hi semshiAttribute       ctermfg=49  guifg=#00ffaf
	hi semshiSelf            ctermfg=249 guifg=#b2b2b2
	hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
	hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=34  guibg=#00af00

	hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
	hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
endfunction

autocmd FileType python call MyCustomHighlights()
