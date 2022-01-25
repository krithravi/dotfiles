se rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Plugin 'jiangmiao/auto-pairs'
Plugin 'VundleVim/Vundle.vim'
Plugin 'danro/rename.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/mycoolsnippets']
Plugin 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
Plugin 'ap/vim-css-color'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
	map <C-n> :NERDTreeToggle<CR>
Plugin 'preservim/tagbar'
	map <C-m> :TagbarToggle<CR>
Plugin 'tpope/vim-commentary'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'neoclide/coc.nvim', { 'branch': 'master' }
call vundle#end()

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

" Coc config

let g:coc_global_extensions = [
	\ 'coc-pairs',
	\ 'coc-eslint',
	\ 'coc-json',
	\ ]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" STOLEN
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()
