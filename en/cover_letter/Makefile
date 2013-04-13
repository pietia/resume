Q = @

list.pdf: list.tex
	@echo LATEX [list.pdf]
	$(Q)if pdflatex --file-line-error --interaction errorstopmode list.tex > /dev/null; then true; else esdplay /usr/share/kf/bass.wav; grep 'list\.tex:[0-9]*:' list.log && false; fi

clean:
	rm -f list.{aux,bbl,blg,log,pdf,toc}
