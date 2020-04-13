.PHONY: test

install:
	bundle install

test:
	bundle exec rspec

lint:
	bundle exec rubocop

lintfix:
	bundle exec rubocop -a