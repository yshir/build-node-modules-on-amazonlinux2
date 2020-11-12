build:
	docker build -t amazonlinux/nodejs .
	docker run --rm -v "$(PWD)":/opt -w /opt amazonlinux/nodejs:latest
	zip -r lambda-deploy.zip index.js node_modules
	rm package-lock.json
	rm -rf node_modules
