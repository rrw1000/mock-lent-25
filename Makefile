# requires GNU make

# Warning: this Makefile does, by default, not know about all
# prerequisites of the PDFs it builds. If you update a figure, a simple
# "make" run may therefore not update all affected PDF target files.
# Therefore, after updating a figure file run "make --always-make"
# (or shorter "make -B") to unconditionally make all targets.

SHELL=/bin/bash

.DELETE_ON_ERROR:

%.pdf %.aux: %.tex
	pdflatex -halt-on-error -file-line-error $<
	while grep 'Rerun to get ' $*.log ; do pdflatex -halt-on-error $< ; done
%-solutions.pdf %-solutions.aux: %.tex
	pdflatex -halt-on-error -file-line-error -jobname '$*-solutions' \
	  '\documentclass{tripos}\begin{document}'\
	  '\begin{solutionnotes}\input{$*}\end{solutionnotes}\end{document}'
	while grep 'Rerun to get ' $*-solutions.log ; do \
	  pdflatex -halt-on-error -jobname '$*-solutions' \
	    '\documentclass{tripos}\begin{document}'\
	    '\begin{solutionnotes}\input{$*}\end{solutionnotes}\end{document}';\
	done
%-signoff.pdf %-signoff.aux: %.tex
	pdflatex -halt-on-error -file-line-error -jobname '$*-signoff' \
	  '\documentclass{tripos}\begin{document}'\
	  '\begin{signoff}\input{$*}\end{signoff}'\
	  '\begin{signoffchecker}\input{$*}\end{signoffchecker}'\
	  '\end{document}'
	while grep 'Rerun to get ' $*-signoff.log ; do \
	  pdflatex -halt-on-error -jobname '$*-signoff' \
	    '\documentclass{tripos}\begin{document}'\
	    '\begin{signoff}\input{$*}\end{signoff}'\
	    '\begin{signoffchecker}\input{$*}\end{signoffchecker}'\
	    '\end{document}' ;\
	done
# for xfig graphics
%.pdf: %.fig
	fig2dev -L pdf $< $*.pdf
%.pdftex %.pdftex_t: %.fig
	fig2dev -L pdftex_t -p $*.pdftex $< $*.pdftex_t
	fig2dev -L pdftex $< $*.pdftex

# build lists of papers and questions from wildcards
papers_tex := $(sort $(wildcard 20??-p??.tex))
papers_pdf := $(papers_tex:.tex=.pdf)
papersolutions_pdf := $(papers_tex:.tex=-solutions.pdf)
questions_tex := $(sort $(wildcard 20??-p??-q??.tex))
questions_pdf := $(questions_tex:.tex=.pdf)
questionsolutions_pdf := $(questions_tex:.tex=-solutions.pdf)
# other LaTeX files that produce PDF figures
auxiliary_tex := $(sort $(wildcard 20[2-9]?-p??-q??-*.tex))
auxiliary_pdf := $(auxiliary_tex:.tex=.pdf)

all: mock-ia.pdf mock-ib.pdf

mock-ia.pdf: \
	tripos.cls \
	ia-1-foundations.tex ia-3-oop.tex  ia-5-digital-electronics.tex \
        ia-2-discrete-mathematics.tex  ia-4-databases.tex  ia-6-intro-graphics.tex

mock-ib.pdf: \
	tripos.cls \
	ib-7-semantics.tex  ib-6-candcplusplus.tex  ib-1-conc-dist-sys.tex  ib-5-intro-comp-arch.tex \
        ib-2-data-science.tex  ib-3-econ-law.tex  ib-4-further-graphics.tex

# show a table of contents
toc:
	perl -ne '/\\begin\{question\}\[.*?,author=([\w+]+)\]\{(.*?)\}/ && printf "%-21s %s (%s)\n", $$ARGV, $$2, $$1' \
	  *.tex

clean:
	rm -f *.aux *.log *.synctex.gz *~
	rm -f $(questions_pdf) $(questionsolutions_pdf)
	rm -f $(papers_pdf) $(papersolutions_pdf)

# You can manually add further dependencies (e.g., figure files)
# in "Makefile-dependencies". Or use a tool such as
# https://github.com/mgkuhn/tdepend to do this for you.
include $(sort $(wildcard *-dependencies))
