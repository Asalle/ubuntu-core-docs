#!/bin/zsh

pandoc index.md --pdf-engine=lualatex \
         -V 'mainfont:Ubuntu[wdth,wght].ttf' \
         -V 'sansfont:DejaVuSans' \
         -V 'monofont:DejaVuSansMono' \
         -V 'mathfont:TeXGyreDejaVuMath-Regular' \
         -o out.pdf
