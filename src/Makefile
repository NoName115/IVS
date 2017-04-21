# IVS PROJEKT 2017

SPHINXBUILD   = sphinx-build
SPHINXPROJ    = IVS2017
SOURCEDIR     = .
DOCDIR        = ../doc

default: all

all:
	python3 -m compileall *.py

pack: doc
	#TODO

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
	python3 gui.py

pep:
	pep8 *.py
