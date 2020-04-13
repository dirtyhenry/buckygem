.PHONY: test

install:
	bundle install

test:
	rake

lint:
	bundle exec rubocop

lintfix:
	bundle exec rubocop -a