" EN: LAST CHANGE 20260807
"
" ============ DEFAULT SETTINGS =============================================================================
set encoding=utf-8
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
set termguicolors                   " added 20220922 to enable Hex color codes
set hlsearch                        " set nohlsearch
set background=dark
set number
set relativenumber
set ignorecase
set colorcolumn=110
set nowrap
set wildmenu
set wildmode=list:longest,full
set hidden
set path+=**
set textwidth=110                   " so gqq works on splitting long lines at 110-th position -- 20240826
set viminfo='1000,f1                "20260910: remember local an d global marks for 1000 files
set nrformats+=alpha                " added 20240212: to increase sequences of alpha chars
set formatoptions-=t
set formatoptions+=l

" ADDED 20210308
" wildmenu and wildmode are used for command line completion.
" the command line is "expanded" vertically with a list of all the
" options available on your machine displayed in columns and an
" horizontal strip that you can navigate with <TAB> (forward) and
" <S-Tab> (backward).
set wildmenu
set wildmode=list:longest,full

syntax on
filetype plugin indent on           "20240913
let &t_ut=''                        " added 20231117: fix for disapearing bg color when scrolling!
runtime! ftplugin/man.vim           " added 20221129: load man page into new split -- command 'Man ls' ...

" ============= OTHER SETTINGS ==============================================================================

" added 20231110
source ~/.vim/my-vimrc-includes/align.vim

" --- MOUSE DISPLAY SETTING ---
if has('mouse')
	set mouse=a
endif


" --- TAB CHARACTER DISPLAY ---
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
nnoremap <SPACE>. :set listchars+=space:⋅ <CR>
nnoremap <SPACE>, :set listchars-=space:⋅ <CR>

" 20220513 NOT working!!
"	let lc1='+=space:⋅'
"	let lc2='-=space:⋅'
"	
"	function ToggleListCharsspace()
"		if &listchars == g:lc1
"			let &listchars = g:cl2
"		else
"			let &listchars == g:lc1
"		endif
"	endfunction
"	
"	nnoremap <F9> :call ToggleListCharsspace() <CR>

" === PYTHON SETTINGS ===
autocmd Filetype python setlocal noexpandtab

" --- PYTHON SYNTAX HIGHLIGHT ---
" let python_highlight_all = 1

" --- LIGHTLINE STATUSBAR SETUP ---
" added from: https://github.com/itchyny/lightline.vim
" git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
" change 20220922 colorscheme 'wombat' to 'dracula'
" let g:lightline = {'colorscheme': 'dracula'}

" --- TOGGLE NUMBER/RELTIVENUMBER ---
" <ctrl+1> to toggle between just number and number+relativenumber
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

nnoremap ,n :call NumberToggle()<CR>


" --- VIM-LSP ---
" added 20240913
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


" --- FZF ---
set rtp+=/usr/bin/fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }


" --- ALE ---
let g:ale_enabled = 0
" colorscheme codedark
" colorscheme nord
" colorscheme dracula
" hi Normal ctermbg=234

" --- RAINBOW ---
" enable Rainbow globally 20210813
" let g:rainbow_active = 1

" --- CROSSHAIR LOCATION ---
hi ColorColumn ctermbg=232 guibg='#3F4354'
set cursorline
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=232 guifg=NONE guibg='#3F4354'
hi CursorLine cterm=NONE ctermbg=232 guifg=NONE guibg='#3F4354'
" staro:
" hi CursorColumn cterm=NONE ctermbg=red ctermfg=white
" hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=red
" hi CursorLine cterm=NONE cterm=underline ctermbg=NONE
" hi CursorLine guibg=grey16 guifg=NONE
" hi CursorLine guibg=royalblue4 guifg=NONE
" hi CursorColumn guibg=royalblue4 guifg=NONE
" hi CursorLine guibg='#181a1b' guifg=NONE
" hi CursorLine ctermbg=NONE cterm=underline term=NONE guifg=NONE guibg=NONE
" hi CursorColumn cterm=NONE term=NONE guifg=NONE guibg=NONE
" hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=232
" hi CursorLine cterm=NONE cterm=underline ctermbg=NONE
" hi CursorColumn guifg=NONE guibg='#5f5f87'

" --- CUSTOM COLOR SETTINGS FOR tab AND space CHARS ---
" 20240116
:hi Whitespacechar ctermfg=DarkGray
:hi Tabspacechar   ctermfg=DarkGray
:match Whitespacechar / \+$/
:match Tabspacechar /\t/

" hi Normal guibg='#222430'
" hi Normal guibg='#231e2e'
" hi Normal guibg='#201d26'
" hi Normal guibg='#18151f' " very dark
" hi Normal guibg='#191926'
hi Normal guibg='#222229'

" =========== PLUGGINS (vim=plug) ===========================================================================
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasiser/vim-code-dark'
" Plug 'dense-analysis/ale'
" Plug 'inkarkat/vim-ingo-library'
" Plug 'inkarkat/vim-ShowTrailingWhitespace'
Plug 'matze/vim-move' " *** 20221121 (d)
Plug 'ziglang/zig.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" 20240205
Plug 'fxn/vim-monochrome'

" 20240214
" 20240903
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
" 20240903
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

"20240913
Plug 'rust-lang/rust.vim'

call plug#end()

" vim-move plugin
" added 20221121
let g:move_key_modifier = 'C'            " *** 20221121 (d)
let g:move_key_modifier_visualmode = 'S' " *** 20221121 (d)

" ================== COLORSCHEMES ==============================

" --- 20240115 catpucin_ theme for lightline ---
let g:lightline = {'colorscheme': 'catppuccin_mocha'}

" --- SWITCH COLORSCHEMES ---
" source ~/.vim/my-vimrc-include/switch-colorschemes.vim

" --- SONOKAI COLOR THEME ---
" source ~/.vim/my-vimrc-include/sonokai-theme-include.vim

" --- DRACULA COLOR THEME ---
" source ~/.vim/my-vimrc-include/dracula-theme-include.vim

" --- DRACULA COLOR THEME (NEW) ---
" ADDED 20210127
" from: https://draculatheme.com/vim
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
""" packadd! dracula
""" syntax enable
""" colorscheme dracula

" added 20220922 to correct right background for Dracula CS
" hi Normal ctermbg='282a36'
" hi Normal guibg='#282a36'
" hi Normal guibg='#222430'

" --- FINAL COLORSCHEME SETTING ---
" --- (if everything else fails) ---
" local colorscheme settings:
" colorscheme  simple-dark
" colorscheme  wombat256mod
" colorscheme nord

" 20240205
" from Plug 'fxn/vim-monochrome'
" let g:monochrome_italic_comments = 1
" colorscheme monochrome

" 20240115 installed "https://github.com/catppuccin/vim"
" instructions in README.md file
colorscheme catppuccin_mocha

" ================= ABBREVIATIONS ===========================================================================
" ab sbng #! /usr/bin/env bash<CR><TAB>
" ab sbng #! /usr/bin/env bash<CR># fname: <C-R>%<CR># [] v1<CR># ---<CR>
" updated 20250807: insert datestamp
ab sbng #! /usr/bin/env bash<CR># fname: <C-R>%<CR># <C-R>=strftime('%Y%m%d')<CR> v1<CR># ---<CR>
ab pt3 #! /usr/bin/env python3<CR># -*- coding: utf-8 -*-<CR><CR><ESC>:so ~/.vimrc | :set syntax=python
ab sout System.out.println(
ab zst const std = @import("std");<CR><CR>pub fn main() !void {<CR>const out = std.io.getStdOut().writer();<CR>const in = std.io.getStdiIn().reader();<CR><CR>try out.print("I'm Alive!\n", .{});<CR><CR>}<CR><ESC>:so ~/.vimrc | :set syntax=zig

" --- C ABBREVIATIONS ---
" update 20250321
ab cstv #include <stdio.h><CR>#include <string.h><CR><CR><CR>int main(void)<right> {<CR><CR><CR><CR><CR>return 0;<CR>}<ESC>4ki<TAB>printf("I'm Alive");<ESC>:so ~/.vimrc | :set syntax=c
ab cst #include <stdio.h><CR>#include <string.h><CR><CR><CR>int main(int argc, char **argv)<right> {<CR><CR><CR><CR><CR>return 0;<CR>}<ESC>4ki<TAB>printf("I'm Alive");<ESC>:so ~/.vimrc | :set syntax=c

" --- ABBREVIATIONS AND MAPPINGS FOR JAVA ---
"added 20220803
iab psvm <TAB>public static void main(String[<Right><SPACE>args<Right><SPACE>{<CR><CR><CR><Right><SPACE>// end main<ESC>kki<CR>
inoremap sout System.out.println("");<ESC>hhi
iab inm if __name__ == '__main__':<CR>

" ================= MAPPINGS ================================================================================
let mapleader = " "

" --- ENCLOSING BRACKETS/SQUARE/CURLY ---
inoremap ${{ ${}<ESC>hli
inoremap {{ {}<ESC>hli
inoremap (( ()<ESC>hli
inoremap [[ []<ESC>hli
inoremap [[[ [[]]<ESC>hli


" --- ADD/REMOVE QUOTES AROUND WORD ---
nnoremap <silent> ,dq :call Quote('"')<CR>
nnoremap <silent> ,sq :call Quote("'")<CR>
nnoremap <silent> ,uq :call UnQuote()<CR>

" Quote a word consisting of letters from iskeyword.
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

" --- SEARCH AND REPLACE [12] AND [123] WITH CONFIRMATION ---
nnoremap ,d :%s/\[\d\+]//gc
" search for [12] or [123] troughout a file and ask to deete it --> maped to ,d <comma+d>


" --- COMMENT/UNCOMMENT VISUALLY SELECTED BLOCK ---
vnoremap ,pt :s@\(^\s*\)\(.*\)@\1# \2@<CR>
vnoremap ,pu :s@\(^\s*\)# @\1@<CR>
vnoremap ,jv :s@\(^\s*\)\(.*\)@\1// \2@<CR>
vnoremap ,ju :s@\(^\s*\)// @\1@<CR>

"
" --- C-STYLE COMMENT OUT VISUAL BLOCK ---
vnoremap ,cc :s/^/ * /<CR>gv"xdO/*<CR><ESC>0C */<ESC>k"xp<CR>
vnoremap ,cu :s/^\s*\* //<CR>gv"xdddkdd"xP<CR>


" --- HTML COMMENT/UNCOMMENT ---
vnoremap ,ht :s/\%V\(.*\)\%V/<!-- \1 -->/<CR>
vnoremap ,hu :s/\%V<!-- \(.*\) -->\%V/\1/<CR>
" html style comment / uncomment visual selection

" --- REMOVE LEADING CHARS WITH space IN VISUAL MODE ---
vnoremap ,<SPACE> :s@^.\{1,2\} @@<CR>

" --- REPLACE MULTIPLE <TAB>S WITH TRAILING <SPACE> WITH <TAB>S ONLY ---
vnoremap ,t :s/\(\t\+\) \+/\1/g<CR>

" --- ENCLOSE VISUAL SELECTION BETWEEN <CODE></CODE> TAGS ---
vnoremap ,cd di<code><CR></code><CR><ESC>kP?<code><CR>:s@.*\(<code>\)@\1@<CR>/</code><CR>:s@.*\(</code>\)@\1@<CR>j

" --- INSERT <CODE></CODE> AND PUT CURSOR INSIDE TO START TYPING OR PASTE CONTENTS ---
nnoremap ,c i<code><CR></code><CR><ESC>kki

" --- SHIFT TAB AND REMOVE spaceS ---
vnoremap ,rr >gv:s/\(\t\+\) \+/\1/g<CR>

" --- CLONE CURRENT LINE OR SELLECTION ---
noremap <LEADER>c yyp
vnoremap <LEADER>c yPgv
" clone current line or selection and:
"        - normal mode: paste it under current line
"        - visual selection: paste it over current line, but select lower selection block

" --- SYNTAX SETUP MAPPINGS ---
noremap ,stb :so ~/.vimrc <BAR> :set syntax=bash<CR>
noremap ,stz :so ~/.vimrc <BAR> :set syntax=zig<CR>
noremap ,stp :so ~/.vimrc <BAR> :set syntax=python<CR>
noremap ,stc :so ~/.vimrc <BAR> :set syntax=c<CR>
noremap ,stj :so ~/.vimrc <BAR> :set syntax=java<CR>
noremap ,stv :so ~/.vimrc <BAR> :set syntax=vim<CR>


" --- NETRW WINDOW SETUP ---
nnoremap <LEADER>pv :wincmd v<BAR> :Ex <BAR> :vertical resize 30<CR>
"vim's file explorer (Netrw) in left column of size 30 (close with :bd)


" --- RANGER ---
nnoremap <LEADER>r :Ranger<CR>
let g:ranger_map_keys = 0


" --- SEMICOLON MAPPINGS ---
nnoremap <LEADER>s :s/ *;*$/;/<ESC>j
nnoremap <LEADER>x vllc/* <ESC>A */<ESC>
" replace spaces and semicolon or just spaces
" at the end of the line:
" effect: single ; at the end of text remains


" --- BREAK LINE AT POSITION 110 CHARS ---
nnoremap ,b 0110lbi<BS><CR><ESC>
" 0110lbikba


" --- MOVE ENTIRE LINES AROUND ---
" nnoremap j :m.+1<CR>==
" nnoremap k :m.-2<CR>==
" inoremap j <ESC>:m.+1<CR>==gi
" inoremap j <ESC>:m.-2<CR>==gi
" vnoremap j :m'>+1<CR>gv=gv
" vnoremap k :m'<-2<CR>gv=gv
"
" from: https://vim.fandom.com/wiki/Moving_lines_up_or_down
" to enter Alt+j key: Ctrl+v Alt+j in insert mode!


" --- MULTIPLE LINES MOVE ---
nnoremap <SPACE>j :m.+1<CR>==
nnoremap <SPACE>k :m.-2<CR>==
vnoremap <SPACE>j :m'>+1<CR>gv=gv
vnoremap <SPACE>k :m'<-2<CR>gv=gv
" move entire lines UP and DOWN
" to enter instead of Alt key --> space key

" --- CMD PROMT SYMBOL REPLACEMENT ---
nnoremap ,4 :s/^\s*/$> /<CR> :nohl <CR><CR>
vnoremap ,4 :s/^\s*/$> /<CR> :nohl <CR><CR>
nnoremap <SPACE>4 :s/^\$ /$> /<CR> :nohl <CR><CR>
vnoremap <SPACE>4 :s/^\$ /$> /<CR> :nohl <CR><CR>


" --- NEERDTREE ---
nnoremap <LEADER>n :NERDTreeToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>
" nnoremap <LEADER>n :NERDTree<CR>


" --- FZF ---
nnoremap <LEADER>ff :FZF<CR>
nnoremap <LEADER>fe :FZF -e<CR>


" --- REPLACES TABS TO 4 spaceS ---
vnoremap <C-T> :s/\%V\t/    /g<CR>
" whole lines -> <shift+v>
" block       -> <ctrl+v>


" --- REMOVES LAGGING WHEN EDITING *.h FILES ---
nnoremap <LEADER>st :syntax off<CR>:syntax on<CR>


" --- INSERT <SPACE> BETWEEN // AND TEXT ---
noremap <SPACE>s :%s/\/\/\(\w.*\)/\/\/ \1/<CR>
" replace '//text ...' with '// text ...'


" --- MAP ctrl+x ctrl+f to ctrl+f ---
inoremap <C-F> <C-X><C-F>


" --- COPY HTTP LINK INTO THE [NUMBER] HOLDER FOR THE LINK AFTER LYXD_ED DOCUMENT ---
noremap ,lc fhvg_y<C-O>ci[<C-R>0<ESC>
" 1 - go inside '[' ']'
" 2 - <C-O> to go to coresponding link at the bottom
" 3 - pres ,lc to do the magic ...


" --- OPEN ALL BUFFERS INTO SEPARATE TABS ---
nnoremap ,bt :bufdo tab split<CR><CR>
" map ,bt :bufdo tab split<CR><CR>


" --- TABLE ROW DIVIDERS ---
noremap ,tr 0yyjp}P<ESC>j


" --- MOVE '{' AFTER 'FUNC() ' ---
noremap <SPACE>f jddkA {<ESC>


" --- SET SYNTAX MAPPINGS ---
noremap <SPACE>ss :set syntax=<CR>
noremap <SPACE>ssc :set syntax=c<CR>
noremap <SPACE>sst :set syntax=text<CR>
noremap <SPACE>ssj :set syntax=java<CR>
noremap <SPACE>ssp :set syntax=python<CR>
noremap <SPACE>ssg :set syntax=go<CR>
noremap <SPACE>ssh :set syntax=sh<CR>
noremap <SPACE>ssv :set syntax=vim<CR>


" --- INDENT/FORMAT main{} BLOCK ---
nnoremap <SPACE>= 0Vf{%=gv:s/\(\t\+\) \+/\1/g<CR>
" select whole 'main() { ... }' block, formate it with '=' and
" replace 5 spaces with tabs


" --- INITIAL CONFIG SOURCE AND SYNTAX SETUP ---
nnoremap <SPACE>v :so ~/.vimrc <BAR> set syntax=c <BAR> :noh<CR>
" nnoremap <SPACE>v :so ~/.vimrc <BAR> set syntax=c<CR>


" --- MOVE LINE UNDER THE CURSOR INSIDE [] ---
nnoremap ,sb 0vg_xi[<C-R>"]<ESC>j<CR>
vnoremap ,sb xi[]<ESC>h""p<ESC>
" move line under the cursor inside []
" move selected text into []

"
" --- CHANGE BUFFER TO FILE FROM LIST ---
nnoremap <LEADER>b :buffers<CR>:buffer<SPACE>
" from: vim-working-with-buffers-multif-5ppp-20260210.txt
" https://builtin.com/articles/working-with-buffers-in-vim

" --- SEARCH IN VIM'S FILE EDIT HISTROY AND OPEN IT FOR EDIT/VIEW ---
nnoremap <LEADER>oo :oldfiles<CR>e #<
" must enter colon ':' and add a line number

" --- PUT SEMICOLON AT THE END OF THE LINE ---
nnoremap ;; A;<ESC><CR>
vnoremap ;; :norm A;<ESC><CR>

" --- REPLACE LEADING 4 spaceS TO TABS ---
nnoremap <SPACE>4t :%s/\(^\s*\)\@<=    /\t/g<CR><BAR>:noh<CR>
vnoremap <SPACE>4t :s/\(^\s*\)\@<=    /\t/g<CR><BAR>:noh<CR>

" --- REPLACE LEADING 2 spaceS TO TABS ---
nnoremap <SPACE>2t :%s/\(^\s*\)\@<=  /\t/g<CR><BAR>:noh<CR>
vnoremap <SPACE>2t :s/\(^\s*\)\@<=  /\t/g<CR><BAR>:noh<CR>

" --- REPLACE SINGLE QUOTE INSIDE WORDS WITH APOSTROPHE COMMAND ---
nnoremap <SPACE>9 :%s/\([[:alpha:]]\)'\([[:alpha:]]\)/\1´\2/g<CR><BAR>:noh<CR>


" --- RETAB VISUAL SELLECTION ---
vnoremap ,rt :retab!<CR>


" --- MOVE SELECTED TEXT BETWEEN '', OR BETWEEN "" ---
vnoremap <SPACE>sq xi''<ESC>h""p<ESC>
vnoremap <SPACE>dq xi""<ESC>h""p<ESC>


" --- TO ACCEPT TERMINAL BACKGROUND IMAGE kitty.conf ---
hi Normal guibg=NONE ctermbg=NONE

" --- REMOVE '[...]' IN CURRENT LINE ---
nnoremap ,ds :s/\[.\+\]//g<CR>:noh<CR>
vnoremap ,ds :s/\[.\+\]//g<CR>:noh<CR>

" --- INSERT DATESTAMP 'yyyyMMDD' ---
nnoremap ,dt "=strftime('%Y%m%d')<CR>P<CR>
inoremap ,dt <C-R>=strftime('%Y%m%d')<CR>
vnoremap ,dt <C-R>=strftime('%Y%m%d')<CR>

" --- WRITE AND CLOSE BUFFER ---
noremap ,wd :w <BAR> :bd<CR>
" or:
" noremap ,wd :w \| :bd<CR>
"

" --- CHANGE FROM 'NONMODIFIABLE' TO 'MODIFIABLE' ---
noremap ,mf :set modifiable<CR>

" change from 'modifiable' to 'nonmodifiable'
noremap ,nf :set nomodifiable<CR>

" --- PUT SELLECTION INSIDE DOUBLE OR SINGLE QUOTES ---
vnoremap 1q c''<ESC>hp
vnoremap 2q c""<ESC>hp

" --- HIDE/DISPLAY TAB CHARACTER ---
nnoremap <SPACE>0 :set listchars=tab:\ \ ,nbsp:·<CR>
nnoremap <SPACE>t :set listchars=tab:┊⋅<CR>
