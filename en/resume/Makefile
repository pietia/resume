Q = @

cv.pdf: cv.tex education.tex experience.tex misc.tex skills.tex
	@echo LATEX [cv.pdf]
	$(Q)pdflatex --file-line-error cv.tex; grep 'cv\.tex:[0-9]*:' cv.log; true
