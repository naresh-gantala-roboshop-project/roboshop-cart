.PHONY: build run docker-build clean

build:
	npm install

run:
	REDIS_HOST=localhost CATALOGUE_URL=http://localhost:8002 node server.js

docker-build:
	docker build -t nareshroboshop.azurecr.io/roboshop-cart .
	docker push nareshroboshop.azurecr.io/roboshop-cart

clean:
	rm -rf node_modules
