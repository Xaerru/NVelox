" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader><TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Toggle NerdTree
nmap <C-n> :NERDTreeToggle <CR>

" bind F to grep word under cursor
nmap <silent>F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Leader binds
nmap <leader>f :GFiles <CR>

" Move forward in insert mode
imap jj <ESC>la

" Highlight off on enter
nnoremap <silent><CR> :noh<CR>

" Exit terminal
tnoremap <ESC> <C-d>:bd

" Maximizer
let g:maximizer_set_default_mapping = 1
let g:maximizer_default_mapping_key = '<F3>'
