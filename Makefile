SHELL:=/bin/bash
include .env

EXAMPLE=$(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

.PHONY: all clean validate test docs format

all: validate test docs format

clean:
	rm -rf .terraform/

validate:
	$(TERRAFORM) init && $(TERRAFORM) validate && \
		$(TERRAFORM) -chdir=modules/packer init && $(TERRAFORM) -chdir=modules/packer validate && \
		$(TERRAFORM) -chdir=modules/python init && $(TERRAFORM) -chdir=modules/python validate && \
		$(TERRAFORM) -chdir=modules/awscli init && $(TERRAFORM) -chdir=modules/awscli validate && \
		$(TERRAFORM) -chdir=modules/ecr init && $(TERRAFORM) -chdir=modules/ecr validate && \
		$(TERRAFORM) -chdir=modules/kubectl init && $(TERRAFORM) -chdir=modules/kubectl validate && \
		$(TERRAFORM) -chdir=modules/s3cmd init && $(TERRAFORM) -chdir=modules/s3cmd validate && \
		$(TERRAFORM) -chdir=modules/git init && $(TERRAFORM) -chdir=modules/git validate && \
		$(TERRAFORM) -chdir=modules/gradle init && $(TERRAFORM) -chdir=modules/gradle validate

test: validate
	$(CHECKOV) -d /work

	$(TFSEC) /work

diagram:
	$(DIAGRAMS) diagram.py

docs: diagram
	$(TERRAFORM_DOCS) markdown ./ >./README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/packer >./modules/packer/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/python >./modules/python/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/awscli >./modules/awscli/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/ecr >./modules/ecr/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/kubectl >./modules/kubectl/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/s3cmd >./modules/s3cmd/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/git >./modules/git/README.md && \
		$(TERRAFORM_DOCS) markdown ./modules/gradle >./modules/gradle/README.md

format:
	$(TERRAFORM) fmt -list=true ./ && \
		$(TERRAFORM) fmt -list=true ./modules/packer && \
		$(TERRAFORM) fmt -list=true ./modules/python && \
		$(TERRAFORM) fmt -list=true ./modules/awscli && \
		$(TERRAFORM) fmt -list=true ./modules/ecr && \
		$(TERRAFORM) fmt -list=true ./modules/kubectl && \
		$(TERRAFORM) fmt -list=true ./modules/s3cmd && \
		$(TERRAFORM) fmt -list=true ./modules/git && \
		$(TERRAFORM) fmt -list=true ./modules/gradle && \
		$(TERRAFORM) fmt -list=true ./examples/apachesling && \
		$(TERRAFORM) fmt -list=true ./examples/ghost && \
		$(TERRAFORM) fmt -list=true ./examples/minio

example:
	$(TERRAFORM) init examples/$(EXAMPLE) && $(TERRAFORM) plan examples/$(EXAMPLE)
