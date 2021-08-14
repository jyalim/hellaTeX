#!/usr/bin/env make 

LC   = lualatex
BC   = bibtex
LOPT = 
BOPT = 

libnames = default_pgfplotsset.tex 
texfiles:= $(filter-out $(libnames),$(wildcard *.tex))
texnames:= $(foreach tex,$(texfiles),$(basename $(tex)))
pdfnames:= $(foreach tex,$(texnames),$(tex).pdf)

tbld := $(shell tput bold)
tbrd := $(tbld)$(shell tput setaf 1)
tbgr := $(tbld)$(shell tput setaf 2)
tbyl := $(tbld)$(shell tput setaf 3)
tsgr := $(shell tput sgr0)

.PHONY : help all clean FORCE

define HELP_TEXT
$(tbld)
========================================================================
  COMMAND: DESCRIPTION
     help: default -- generates this help text
      all:         -- generate all pdfs
                   -- (use the -j flag to multiprocess)
    clean:         -- remove aux,log,pdf files

Passing tex files or tex names will result in compilation, e.g.

    $$ make -j4 *.tex

which would be equivalent to a four-core make all, and

    $$ make summary

would make the summary pdf.
  
========================================================================
$(tsgr)
endef

export HELP_TEXT
help:
	@echo "$$HELP_TEXT"

all: $(pdfnames)
$(texfiles): % : %.pdf FORCE
$(texnames): % : %.pdf FORCE
%.pdf: FORCE
	$(eval name = $(basename $(basename $@)))
	@$(LC) $(LOPT) $(name) || echo "ERROR"
	@grep -Eq 'natbib|addbibresource' $(name).tex && {      \
		echo "$(tbgr)$(name) contains bibliography, running"; \
		echo "    bibtex and then lualatex twice.$(tsgr)";    \
		$(BC) $(BOPT) $(name);                                \
		$(LC) $(LOPT) $(name);                                \
		$(LC) $(LOPT) $(name);                                \
	} || :

sweep:
	@test ! -d .Trash && mkdir .Trash || :
	@test -f *.aux     && mv -v *.aux     .Trash || : 
	@test -f *.bbl     && mv -v *.bbl     .Trash || : 
	@test -f *.bcf     && mv -v *.bcf     .Trash || : 
	@test -f *.blg     && mv -v *.blg     .Trash || : 
	@test -f *.log     && mv -v *.log     .Trash || : 
	@test -f *.out     && mv -v *.out     .Trash || : 
	@test -f *.toc     && mv -v *.toc     .Trash || : 
	@test -f *.run.xml && mv -v *.run.xml .Trash || : 
	@echo "$(tbyl)Note: cleaned files moved to .Trash$(tsgr)"

clean:
	@test ! -d .Trash && mkdir .Trash || :
	@test -f *.pdf     && mv -v *.pdf     .Trash || : 
	@test -f *.aux     && mv -v *.aux     .Trash || : 
	@test -f *.bbl     && mv -v *.bbl     .Trash || : 
	@test -f *.bcf     && mv -v *.bcf     .Trash || : 
	@test -f *.blg     && mv -v *.blg     .Trash || : 
	@test -f *.log     && mv -v *.log     .Trash || : 
	@test -f *.out     && mv -v *.out     .Trash || : 
	@test -f *.toc     && mv -v *.toc     .Trash || : 
	@test -f *.run.xml && mv -v *.run.xml .Trash || : 
	@echo "$(tbyl)Note: cleaned files moved to .Trash$(tsgr)"

FORCE:

