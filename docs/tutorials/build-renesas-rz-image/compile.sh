#!/bin/zsh


# Dependencies:
# apt install texlive-full pandoc librsvg2-bin

pandoc index.md --pdf-engine=lualatex \
	 --toc \
	 --template=./latex.template \
         -V 'mainfont:Ubuntu[wdth,wght].ttf' \
         -V 'sansfont:DejaVuSans' \
         -V 'monofont:DejaVuSansMono' \
         -V 'mathfont:TeXGyreDejaVuMath-Regular' \
         -o out.pdf
