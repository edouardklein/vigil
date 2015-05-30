all: doc lint test

.PHONY: lint test

README.md: doc/vigil.1.ronn
	sed 's/</`/g' < doc/vigil.1.ronn | sed 's/>/`/g'> README.md

doc: doc/vigil.1 doc/vigil.1.html

test:
	python -m doctest src/vigil -v

lint:
	flake8 src/vigil

view_doc: doc/vigil.1.ronn
	ronn doc/vigil.1.ronn --man

doc/vigil.1: doc/vigil.1.ronn
	ronn doc/vigil.1.ronn

doc/vigil.1.html: doc/vigil.1.ronn
	ronn doc/vigil.1.ronn --html

clean:
	rm doc/vigil.1 doc/vigil.1.html

