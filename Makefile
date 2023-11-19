help:
	@echo Build docker iamge
	@echo make ida	-	Build IDA program

ida:
	docker build -t ida -f dockerfiles/Dockerfile.ida .
