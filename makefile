all:
	docker login
	docker build --no-cache -t seqc .
	docker tag seqc paulklemm/seqc:latest
	docker push paulklemm/seqc:latest