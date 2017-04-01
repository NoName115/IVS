# IVS PROJEKT 2017

default: all

all:
	python3 -m compileall src/

pack: doc
	#TODO

clean:
	rm -f src/*.pyc
	rm -rf src/__pycache__

test:
	python3 src/tester.py

doc:
	#TODO

run:
	python3 src/gui.py

pep:
	pep8 src/
