help:
	@echo Build docker iamge
	@echo make ida	-	Build IDA program
	@echo make etcher	-	Build balenaEtcher program
	@echo make ssh	-	Build minimal ssh client

ida:
	docker build -t ida -f dockerfiles/Dockerfile.ida .

etcher:
	docker build -t etcher -f dockerfiles/Dockerfile.etcher .

ssh:
	docker build -t ssh -f dockerfiles/Dockerfile.ssh .
