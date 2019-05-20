build:
	docker build --build-arg RUBY_VERSION=$$(cat .ruby-version) -t rails-boot:0.1 . > /dev/null

run:
	docker run rails-boot:0.1
