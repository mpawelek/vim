" linijka informacyjna na dole okna
set ruler

" wysokosc okna (ilosc linii), maks. 50 miesci sie w ekranie 1280x1024
set lines=50

" szerokosc okna (ilosc kolumn)
set columns=101

" maksymalna szerokosc tekstu (ilosc kolumn)
" set textwidth=80
set textwidth=1000

" szukanie przyrostowe
set incsearch

" podswietlanie znalezionego fragmentu
set hlsearch

" normalne dzialanie klawisza [Backspace]
set backspace=eol,indent,start

" szerokosc tabulatora
" set tabstop=8

" wypelnianie tabow spacjami zwykly tab wstawia sie przez ^v^i lub ^v[Tab]
" set expandtab


" wstawianie zwyklych tabulatorow kombinacja [Ctrl]+[Tab] zamiast w.w.
" inoremap <C-Tab> <C-v><Tab>

" [Backspace] kasuje cale wciecia wykonane takze spacjami
" set softtabstop=4

" automatyczne formatowanie kodu
filetype plugin indent on

" etykiety case w instrukcji switch nie sa wcinane dzieki temu
set cino=:0

" automatycznie zamykanie nawiasow klamrowych { } w kodach c-podobnych
"autocmd filetype c,cc,cpp,java inoremap { {<CR>}<Esc>O

" glebokosc automatycznego wcinania kodu
" set shiftwidth=4

" krotsze i nieautomatyczne wciecia kodu w plikach HTML i w zrodlach TeX
autocmd filetype html,htm,tex set indentexpr= autoindent
" autocmd filetype html,htm,tex set tabstop=2 shiftwidth=2 softtabstop=2

" kolorowanie skladniowe
" syntax on
:hi normal guibg=#05477c
:hi normal guifg=#8cc5f2
:hi visual guifg=#ffffff
:hi visual guibg=#000000

" wyswietlanie na czerwono tabulatorow oraz koncowych bialych znaków
set list
set listchars=tab:>-,trail:*
highlight specialkey guifg=red

" nieco mniej meczacy kolor tla w GUI
" highlight normal guibg=grey83

" przyjemna dla oka czcionka w GUI (czcionka z OOo dla Windows)
" set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI
set guifont=Source\ Code\ Pro\ Medium:h10:cDEFAULT

" by mich
map <M-F1> :w<CR>:bn!<CR>
map <M-F2> :w<CR>:bp!<CR>
map ± :cn<CR>
map <C-F9> :make %<<CR>
map <F9> :!%<<CR>

" mapowania dla CVS-a
" zalozenie:
"   W repozytorium $CVSROOT musi istniec katalog 'praca-dyp'
map <C-F8> :!cvs checkout praca-dyp<CR> :cd ./praca-dyp/src<CR> <NL>:args *.c<CR>
map <C-F11> :!cvs commit %<CR>

" mapowania dla wygladu kodu
" set expandtab
" set shiftwidth=4
" set softtabstop=4
:winpos 334 6

" scrollbar z prawej i dolny
set guioptions=mrb

" bez dzwonka
:set vb t_vb=

" GO
execute pathogen#infect()
" set rtp+=$GOROOT/misc/vim
" set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
" syntax on
"
" PKO !
"   :set fileencodings=iso-8859-2
"   :set enc=iso-8859-2
"   :set fenc=iso-8859-2

:set fileencodings=cp1250,utf-8,iso-8859-2
:hi TabLine gui=reverse guibg=#05477c guifg=#8cc5f2
:set diffopt=vertical