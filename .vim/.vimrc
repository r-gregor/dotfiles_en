" ------------ DEFAULT SETTINGS -------------------------------
set nocompatible                    " This must be first, because it changes other options as a side effect.
set backspace=indent,eol,start      " allow backspacing over everything in insert mode
set history=50                      " keep 50 lines of command line history
set ruler                           " show the cursor position all the time
set showcmd                         " display incomplete commands
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set laststatus=2
set t_Co=256
set nohlsearch
syntax on
set background=dark
set number
set relativenumber
set ignorecase
set colorcolumn=110
" hi ColorColumn ctermbg=88
set nowrap
set wildmenu
set wildmode=list:longest,full
set hidden
set path+=**
set termguicolors                   " added 20220922 to enable Hex color codes

" ------------ MOUSE DISPLAY SETTING --------------------------
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif


" ------------ TAB CHARACTER DISPLAY --------------------------
" method 2:                         
" set listchars=tab:\|\ 

" method 3: (active)
" (insert unicode character fo tight filled triangle big: '<ctrl + v>u25b6\ ')
" u25b6: ▶
" u25b7: ▷
" u25b8: ▸
" u25b9: ▹
" u25bb: ▻
" u27a1: ➡
" u22c5: ⋅
" u237f: ⍿  
"
" u254e: ╎ 
"
" u2506: ┆  
"
" u250a: ┊  
"
" u258f: ▏
" u00bb: »
" set listchars=tab:▶\
" set listchars=tab:⍿⋅
" set listchars=tab:»⋅
" set listchars=tab:▏⋅
" set listchars=tab:┊⋅
set listchars=tab:┊⋅
" set listchars=tab:┊\ 
" set listchars+=space:⋅
set listchars+=trail:⋅
set list
nnoremap <space>. :set listchars+=space:⋅ <CR>
nnoremap <space>, :set listchars-=space:⋅ <CR>

" 20220513 NOT working!!
"	let lc1='+=space:⋅'
"	let lc2='-=space:⋅'
"	
"	function ToggleListCharsSpace()
"		if &listchars == g:lc1
"			let &listchars = g:cl2
"		else
"			let &listchars == g:lc1
"		endif
"	endfunction
"	
"	nnoremap <F9> :call ToggleListCharsSpace() <CR>

" ----------------- PYTHON SYNTAX HIGHLIGHT -------------------
" let python_highlight_all = 1

" ----------------- LIGHTLINE STATUSBAR SETUP -----------------
" added from: https://github.com/itchyny/lightline.vim
" git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
" change 20220922 colorscheme 'wombat' to 'dracula'
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" ----------------- ABBREVIATIONS ------------------------------
iab sbng #! /usr/bin/env bash<cr><cr>### Name:<tab>Scriptname ...<cr>### Author:<tab>Author ... <cr>### Date:<tab> <cr>### Decription:<cr>### <cr>### <cr>### <cr> 
iab grv ${gr_} 
iab pt3 #! /usr/bin/env python3<cr># -*- coding: utf-8 -*-<cr><cr>
iab sout System.out.println(

" ----------------- ENCLOSING BRACKETS/SQUARE/CURLY ------------
"inoremap ${ ${}<Left>
inoremap ${ ${}<ESC>hli
inoremap {  {}<ESC>hli
inoremap (  ()<ESC>hli
inoremap [  []<ESC>hli

" ----------------- ADD/REMOVE QUOTES AROUND WORD --------------
" Quote a word consisting of letters from iskeyword.
nnoremap <silent> qd :call Quote('"')<CR>
nnoremap <silent> qs :call Quote("'")<CR>
nnoremap <silent> uq :call UnQuote()<CR>
function! Quote(quote)
	normal mz
	exe 's/\(\k*\%#\k*\)/' . a:quote . '\1' . a:quote . '/'
	normal `zl
endfunction

function! UnQuote()
	normal mz
	exe 's/["' . "'" . ']\(\k*\%#\k*\)[' . "'" . '"]/\1/'
	normal `z
endfunction

" ------------------ TOGGLE NUMBER/RELTIVENUMBER ---------------
" <ctrl+n> to toggle between just number and number+relativenumber
" from: https://superuser.com/questions/339593/vim-toggle-number-with-relativenumber
"Relative with start point or with line number or absolute number lines
function! NumberToggle()
	if(&number == 1)
		" set number!
		set relativenumber!
	elseif(&relativenumber==1)
		set relativenumber
		set number
	else
		set norelativenumber
		set number
	endif
endfunction

nnoremap <C-l> :call NumberToggle()<CR>


" ------------------ SWITCH COLORSCHEMES - PREVIEV -------------
" source ~/.vim/my-vimrc-include/switch-colorschemes.vim

" ------------------ DRACULA COLOR THEME -----------------------
" source ~/.vim/my-vimrc-include/dracula-theme-include.vim


" ----------------- DRACULA COLOR THEME -----------------------------
" ADDED 20210127
" from: https://draculatheme.com/vim
" 
" Install (Vim):
" These are the default instructions using Vim 8's |packages| feature. See sections below, if you use other plugin managers.
"     Create theme folder (in case you don't have yet):
" mkdir -p ~/.vim/pack/themes/start
" If you use vim 8.0 (and not 8.2), you may need to use ~/.vim/pack/themes/opt instead.
"     Navigate to the folder above:
" cd ~/.vim/pack/themes/start
"     Clone the repository using the "dracula" name:
" git clone https://github.com/dracula/vim.git dracula
"     Create configuration file (in case you don't have yet):
" touch ~/.vimrc
"     Edit the ~/.vimrc file with the following content:
" packadd! dracula
" syntax enable
" colorscheme dracula
" ---
" literal:
packadd! dracula
syntax enable
colorscheme dracula

" added 20220922 to correct right background for Dracula CS
" hi Normal ctermbg='282a36'
" hi Normal guibg='#282a36'
hi Normal guibg='#222430'
" ------------------ SONOKAI COLOR THEME -----------------------
" source ~/.vim/my-vimrc-include/sonokai-theme-include.vim


" ------------------ FINAL COLORSCHEME SETTING -----------------
" ------------------ (if everything else fails) ----------------
" local colorscheme settings:
" colorscheme  simple-dark
" colorscheme  wombat256mod
" colorscheme nord


" MMAAPPIINNGGSS ----------------------------------------------
"
let mapleader = " "

" ADDED 20210226
" search for [12] or [123] troughout a file 
" and ask to deete it --> maped to ,d <comma+d> 
nnoremap ,d :%s/\[\d\+]//gc
nnoremap ,c i<code><CR></code><CR><ESC>kki
" 
"
" added 20210622 (MY PRECIOUS!!)
" comment/uncomment visually selected block
vnoremap ,pt :s@^@# @<CR>
vnoremap ,jv :s@^@// @<CR>
vnoremap ,<space> :s@^.\{1,2\} @@<CR>
vnoremap ,t :s/\(\t\+\) \+/\1/g<CR>
" 
" html comment/uncomment
vnoremap ,ht :s/\%V\(.*\)\%V/<!-- \1 -->/<CR>
vnoremap ,hu :s/\%V<!-- \(.*\) -->\%V/\1/<CR>
" 
" added 20211101: C-style comment out visual block 
vnoremap ,cc :s/^/ * /<CR>gv"0do/*<CR><ESC>0C */<ESC>k"0p<CR>
vnoremap ,cu :s/^ \* //<CR>gv"0dddkdd"0p

" added 20210629 (d) - enclose visual selection
" between <code></code> tags
vnoremap ,cd di<code><CR></code><CR><ESC>kP?<code><CR>:s@.*\(<code>\)@\1@<CR>/</code><CR>:s@.*\(</code>\)@\1@<CR>j

" added 20211105 (en): shift tab and remove spaces 
vnoremap ,rr >gv:s/\(\t\+\) \+/\1/g<CR>


" Plugins (vim-plug) ------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasiser/vim-code-dark'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
" Plug 'inkarkat/vim-ingo-library'
" Plug 'inkarkat/vim-ShowTrailingWhitespace'

call plug#end()

let g:ale_enabled = 0
" colorscheme codedark
" colorscheme nord
" colorscheme dracula
" hi Normal ctermbg=234

" enable Rainbow globally 20210813
" let g:rainbow_active = 1

" 20210813: vim's file explorer (Netrw) in left column of size 30 (close with :bd)
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" ranger settings 20210813
nnoremap <leader>r :Ranger<CR>
let g:ranger_map_keys = 0

" mapping to replace spaces and semicolon or just spaces
" at the end of the line:
" effect: single ; at the end of text remains
nnoremap <leader>s :s/ *;*$/;/<esc>j
nnoremap <leader>x vllc/* <ESC>A */<ESC>

" ----------------- CROSSHAIR LOCATION ------------------------
set cursorline
set cursorcolumn
" hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=232
" hi CursorLine cterm=NONE cterm=underline ctermbg=NONE
hi CursorColumn guifg=NONE guibg='#5f5f87'
hi CursorLine cterm=NONE cterm=NONE ctermbg=232


ab cstrt #include <stdio.h><CR>#include <string.h><CR><CR><CR>int main(int argc, char **argv<right> {<CR><CR><CR><CR><TAB>return 0;<CR><ESC>4ki


" 0110lbikba
" nnoremap <leader>b 0110lbi<BS><CR><ESC>
nnoremap ,b 0110lbi<BS><CR><ESC>



" move entire lines around (from: https://vim.fandom.com/wiki/Moving_lines_up_or_down)
" to enter Alt+j key: Ctrl+v Alt+j in insert mode!
" nnoremap j :m.+1<CR>==
" nnoremap k :m.-2<CR>==
" inoremap j <ESC>:m.+1<CR>==gi
" inoremap j <ESC>:m.-2<CR>==gi
" vnoremap j :m'>+1<CR>gv=gv
" vnoremap k :m'<-2<CR>gv=gv
"

" move entire lines UP an d DOWN
" to enter instead of Alt key --> SPACE key
nnoremap <Space>j :m.+1<CR>==
nnoremap <Space>k :m.-2<CR>==
vnoremap <Space>j :m'>+1<CR>gv=gv
vnoremap <Space>k :m'<-2<CR>gv=gv
"
nnoremap ,4 :s/^/$> /<CR><CR>
vnoremap ,4 :s/^/$> /<CR><CR>
nnoremap <Space>4 :s/^\$ /$> /<CR><CR>
vnoremap <Space>4 :s/^\$ /$> /<CR><CR>

nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>f :FZF<CR>


" abbreviations fo java 20220830
iab psvm <TAB>public static void main(String[<Right><Space>args<Right><Space>{<CR><CR><CR><Right><Space>// end main<ESC>kki<CR>
inoremap sout System.out.println("");<ESC>hhi
iab inm if __name__ == '__main__':<CR>

nnoremap <C-p> :FZF<CR>

" added 20220926
" replaces tabs to 4 spaces in visual block
" whole lines -> <shift+v>
" block       -> <ctrl+v>
vnoremap <C-t> :s/\%V\t/    /g<CR>

" 20220929
" replace '//text ...' with '// text ...'
noremap <Space>s :%s/\/\/\(\w.*\)/\/\/ \1/<CR>

