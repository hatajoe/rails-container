build:
	docker build -t rails-boot:0.1 . > /dev/null

run:
	docker run rails-boot:0.1
