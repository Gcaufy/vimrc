inoremap jj <ESC>

set nu
set relativenumber
set shiftwidth=2
set foldlevel=99

au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css 
au BufNewFile,BufRead *.wpy,*.html,*.htm,*.css,*.js set expandtab tabstop=2 shiftwidth=2  
au BufRead * normal zR

let g:NERDTreeWinPos = "left"
let g:winManagerWindowLayout = "TodoList"
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

let g:javascript_plugin_jsdoc = 1

"disable syntastic auto check
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['javascript'],
                            \ 'passive_filetypes': ['html'] }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:user_emmet_install_global = 1
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_expandabbr_key='<Tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


let g:neocomplcache_enable_at_startup = 0


if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
  set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif

nnoremap <C-f> <PageUp>
nnoremap <C-b> <PageDown>

vmap <leader>c "+y<cr>

let g:ctrlp_map = '<c-p>'
map <leader><leader> :b#<cr>
map <leader>new :edit ~/mine/vim/temp/
map <c-p> :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>

nmap <silent> <C-l> <Plug>(jsdoc)
