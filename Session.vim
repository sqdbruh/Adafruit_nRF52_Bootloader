let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd C:/dev/Adafruit_nRF52_Bootloader
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +67 C:/dev/Adafruit_nRF52_Bootloader/src/boards/gamma/board.h
badd +119 C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.c
badd +81 C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.h
badd +42 C:/dev/Adafruit_nRF52_Bootloader/src/boards/gamma/segmented_digits.h
badd +43 src/boards/pca10056/board.h
badd +412 src/main.c
badd +115 src/usb/usb.c
badd +20 lib/tinyusb/lib/lwip/CMakeLists.txt
badd +283 Makefile
argglobal
%argdel
edit C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 136 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 137 + 137) / 274)
argglobal
balt Makefile
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 87 - ((31 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 87
normal! 03|
wincmd w
argglobal
if bufexists(fnamemodify("C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.c", ":p")) | buffer C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.c | else | edit C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.c | endif
if &buftype ==# 'terminal'
  silent file C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.c
endif
balt C:/dev/Adafruit_nRF52_Bootloader/src/boards/boards.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 106 - ((23 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 106
normal! 015|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 136 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 137 + 137) / 274)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
