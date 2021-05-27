se rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'jiangmiao/auto-pairs'
Plugin 'danro/rename.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'thaerkh/vim-indentguides'
Plugin 'tribela/vim-transparent'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
call vundle#end()
syntax enable
set number
set cursorline
set mouse=a
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

colorscheme PaperColor
"let g:tex_conceal=""
set clipboard^=unnamed,unnamedplus " clipboard = normal clipboard

let g:indentguides_spacechar = '|'
let g:indentguides_tabchar = '▏'
let g:indentguides_firstlevel = get(g:, 'indentguides_firstlevel', 1)

" UltiSnips config (snippets)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/mycoolsnippets']

map u <Nop>
