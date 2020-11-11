build:
	docker build -t amazonlinux/nodejs .
	docker run --rm -v "$(PWD)":/opt -w /opt amazonlinux/nodejs:latest
