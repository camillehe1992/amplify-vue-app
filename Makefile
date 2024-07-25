#########################################################################
# Terraform Makefile
#########################################################################
-include terraform/.env

SHELL := /bin/bash
BASE := $(shell /bin/pwd)

BASE_DIR := $(BASE)/terraform
VAR_FILE := $(BASE_DIR)/tf_$(ENVIRONMENT).tfvars

$(info AWS_PROFILE 		= $(AWS_PROFILE))
$(info AWS_REGION  		= $(AWS_REGION))
$(info STATE_BUCKET		= $(STATE_BUCKET))
$(info ENVIRONMENT 		= $(ENVIRONMENT))
$(info NICKNAME    		= $(NICKNAME))
$(info VAR_FILE 		= $(VAR_FILE))

# Add defaults/common variables for all components
define DEFAULTS
-var-file=$(VAR_FILE) \
-var aws_profile=$(AWS_PROFILE) \
-var aws_region=$(AWS_REGION) \
-var access_token=$(ACCESS_TOKEN) \
-refresh=true -out tfplan
endef

override OPTIONS += $(DEFAULTS)

lint:
	$(info [*] Linting terraform)
	@cd $(BASE_DIR)
	terraform fmt -check -diff -recursive
	terraform validate

check-env:
	$(info [*] Check Environment & AWS Profile)
	@$(info $(shell aws sts get-caller-identity --profile $(AWS_PROFILE)))

init: check-env
	$(info [*] Init Terrafrom Infra)
	@cd $(BASE_DIR) && terraform init -reconfigure \
		-backend-config="bucket=$(STATE_BUCKET)" \
		-backend-config="region=$(AWS_REGION)" \
		-backend-config="profile=$(AWS_PROFILE)" \
		-backend-config="key=$(NICKNAME)/$(ENVIRONMENT)/$(AWS_REGION)/terraform.tfstate"

plan: init
	$(info [*] Plan Terrafrom Infra)
	@cd $(BASE_DIR) && terraform plan $(OPTIONS)

destroy: init
	$(info [*] Plan Terrafrom Infra - Destroy)
	@cd $(BASE_DIR) && terraform plan -destroy $(OPTIONS)

apply: init
	$(info [*] Apply Terrafrom Infra)
	@cd $(BASE_DIR) && terraform apply tfplan

quick-deploy:
	make plan
	@cd $(BASE_DIR) && terraform apply tfplan

quick-destroy:
	make destroy
	@cd $(BASE_DIR) && terraform apply tfplan
