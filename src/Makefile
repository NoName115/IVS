# IVS PROJEKT 2017

SPHINXBUILD = sphinx-build
SPHINXPROJ  = IVS2017
SOURCEDIR   = .
DOCDIR      = ../doc
TEMPDIR     = /tmp/__temp_ivs_pack__
REPODIR     = $(TEMPDIR)/repo
HERE    	= $(PWD)

default: all

all: *.py
	python3 -m compileall $^

pack: doc
	mkdir -p $(REPODIR)
	cp -ar ../* $(REPODIR)
	cp -r $(DOCDIR) $(TEMPDIR)/doc
	rm -rf $(REPODIR)/doc
	make -C $(REPODIR)/src clean
	cd $(TEMPDIR) && zip -qr $(HERE)/xbazik00_xcubae00_xkolcu00_xkurak00.zip ./*
	rm -rf $(TEMPDIR)

package:
	cd .. && python3 setup.py sdist

clean:
	rm -f *.pyc
	rm -rf __pycache__
	rm -rf $(DOCDIR)
	rm -rf ../dist
	rm -rf ../ivs_calculator.egg-info

test:
	python3 tester.py

doc:
	$(SPHINXBUILD) "$(SOURCEDIR)" "$(DOCDIR)"

run:
	python3 ivs-calculator

pep:
	pep8 *.py
