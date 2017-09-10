all: sop-ucsd-cse.pdf sop-cmu-msin.pdf sop-cmu-mse.pdf sop-cmu-msit-se.pdf sop-usc-general.pdf \
	sop-nyu-cs.pdf sop-cu-cs.pdf sop-uci-cs.pdf sop-uci-se.pdf sop-ucd-cs.pdf sop-neu-cs.pdf \
	sop-uiuc-cs.pdf

sop-ucsd-cse.pdf: SCHOOL=UCSD
# CSE or SE or GENERAL
sop-ucsd-cse.pdf: PROGRAM_MAJOR=CSE
# name of program or GENERAL
sop-ucsd-cse.pdf: PROGRAM=CSE

sop-cmu-msin.pdf: SCHOOL=CMU
sop-cmu-msin.pdf: PROGRAM_MAJOR=CSE
sop-cmu-msin.pdf: PROGRAM=MSIN

sop-cmu-mse.pdf: SCHOOL=CMU
sop-cmu-mse.pdf: PROGRAM_MAJOR=SE
sop-cmu-mse.pdf: PROGRAM=SE

sop-cmu-msit-se.pdf: SCHOOL=CMU
sop-cmu-msit-se.pdf: PROGRAM_MAJOR=SE
sop-cmu-msit-se.pdf: PROGRAM=MSITSE

sop-usc-general.pdf: SCHOOL=USC
sop-usc-general.pdf: PROGRAM_MAJOR=GENERAL
sop-usc-general.pdf: PROGRAM=GENERAL

sop-nyu-cs.pdf: SCHOOL=NYU
sop-nyu-cs.pdf: PROGRAM_MAJOR=CSE
sop-nyu-cs.pdf: PROGRAM=MCS

sop-cu-cs.pdf: SCHOOL=CU
sop-cu-cs.pdf: PROGRAM_MAJOR=CSE
sop-cu-cs.pdf: PROGRAM=MCS

sop-uci-cs.pdf: SCHOOL=UCI
sop-uci-cs.pdf: PROGRAM_MAJOR=CSE
sop-uci-cs.pdf: PROGRAM=MCS

sop-uci-se.pdf: SCHOOL=UCI
sop-uci-se.pdf: PROGRAM_MAJOR=SE
sop-uci-se.pdf: PROGRAM=SE

sop-ucd-cs.pdf: SCHOOL=UCD
sop-ucd-cs.pdf: PROGRAM_MAJOR=CSE
sop-ucd-cs.pdf: PROGRAM=MCS

sop-neu-cs.pdf: SCHOOL=NEU
sop-neu-cs.pdf: PROGRAM_MAJOR=CSE
sop-neu-cs.pdf: PROGRAM=MCS

sop-uiuc-cs.pdf: SCHOOL=UIUC
sop-uiuc-cs.pdf: PROGRAM_MAJOR=CSE
sop-uiuc-cs.pdf: PROGRAM=MCS

%.pdf: %.tex
	latexmk -quiet -pdf $< 

%.tex: sop.tex.m4 inc.m4
	m4 -DSCHOOL=$(SCHOOL) -DPROGRAM=$(PROGRAM) -DPROGRAM_MAJOR=$(PROGRAM_MAJOR) $< > $@

clean:
	rm -rf *.tex *.pdf *.aux *.log *.fls *.fdb_latexmk

.PHONY: clean all
