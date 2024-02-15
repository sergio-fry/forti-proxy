all: build run

build:
	docker build -t forti-proxy .
	
run:
	docker run -it -v "./data:/data" forti-proxy
