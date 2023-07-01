run:
	go run cmd/main.go

build_docker:
	docker build -t covid .

run_docker:
	docker run -it --rm covid