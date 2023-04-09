" neovim configuration snippet.
" Personal, but not confidential or specific to the role of a machine.
" This is designed for use with sway (hence Wayland) and the Concertina
" keyboard, Colemak key layout.

" To include this snippet in your configuration, add a “source” statement to
" your init.vim file, like this:
"
" if filereadable(expand("~/.local/share/nvim/site/pack/veikman-nvim/config/base.vim"))
"   source ~/.local/share/nvim/site/pack/veikman-nvim/config/base.vim
" endif

filetype plugin indent on

" Treat the Lissp language as generic Lisp to activate parinfer.
au BufRead,BufNewFile *.lissp             setfiletype lisp

set wildmode=longest,list  " Bash-like tab completion of file paths.

set modeline  " Enable file-specific settings.

set tabstop=2 " Show existing tabs as 2 spaces’ width.
set shiftwidth=2  " When indenting with '>', use 2 spaces.
set expandtab  " On pressing tab, insert 2 spaces.

" Let external clipboard tools handle the register named “*” and “+”.
" Run :help clipboard for a list of supported tools.
" If this doesn’t work, check whether $WAYLAND_DISPLAY is set.
set clipboard=unnamedplus

" Reopen at last open line.
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Navigate split screens with Alt and arrow keys.
" Good with Concertina/Colemak.
nnoremap <A-Up> <C-W><C-J>
nnoremap <A-Down> <C-W><C-K>
nnoremap <A-Right> <C-W><C-L>
nnoremap <A-Left> <C-W><C-H>

" Hit // in visual mode to search for current visual selection.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Easily replace selected.
nnoremap <leader>r :%s///cg<Left><Left><Left>

" Copy-paste to system clipboard.
vnoremap <leader>c "*y
vnoremap <leader>x "*d
nnoremap <leader>v "*p

" Variant visual delete & paste that do not overwrite the register.
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" Colour scheme.
colorscheme palenight
let g:palenight_terminal_italics=1
if (has("termguicolors"))
  set termguicolors
endif

