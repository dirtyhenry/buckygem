.PHONY: test

install:
	bundle install

open:
	open . -a 'Visual Studio Code'

test:
	rake