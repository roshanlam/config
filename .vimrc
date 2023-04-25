syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set bg=dark
highlight Comment ctermfg=green

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

colorscheme gruvbox
autocmd BufWritePost *.tex silent! exec "!pdflatex -interaction=batchmode % > %:r.log 2>&1 && open -a Preview.app --background --args -auto-reload " . fnamemodify(expand("%:r"), ":p") . ".pdf"
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd FileType tex call coc#activate()
let g:coc_snippet_next = '<tab>'
let g:livepreview_previwer = 'open -a Preview'
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:airline_powerline_fonts = 1
