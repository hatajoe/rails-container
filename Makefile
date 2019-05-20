build:
	docker build --build-arg RUBY_VERSION=$$(cat .ruby-version) -t rrc:0.1 .

install:
	docker run -it -v $$(pwd):/opt/ rrc:0.1 bundle install --path vendor/bundle

new: 
	docker run -it -v $$(pwd):/opt/ rrc:0.1 bundle exec rails new .

run:
	docker run -it -v $$(pwd):/opt/ rrc:0.1 bundle exec rails --version

