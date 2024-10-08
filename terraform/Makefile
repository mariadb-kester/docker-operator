.SHELL := /usr/bin/bash

# ############################################################################################################

export TF_IN_AUTOMATION ?= true
export TF_LOG ?= TRACE
export TF_LOG_PATH ?= /tmp/$(shell basename $$PWD)-$@-$(shell date -u +"%Y-%m-%dT%H:%M:%SZ")

# ############################################################################################################

k8s-configure:
	echo 1

run-pre-commit:
	pre-commit run --all-files

# ############################################################################################################

.PHONY: clear
clear:
	clear

# Usage: replace % with environment directory name, e.g. for rnd:
# make init-rnd
init-%:
	source .env && \
	cd $* && \
	terraform init

# Usage: replace % with environment directory name, e.g. for rnd:
# make refresh-rnd
refresh-%:
	source .env && \
	cd $* && \
	terraform refresh

# Usage: replace % with environment directory name, e.g. for rnd:
# make plan-rnd
# DEBUG level logs will be written to /tmp/DIRNAME-plan-ENV-TIMESTAMP
plan-%: init-% clear
	source .env && \
	cd $* && \
	terraform plan

# Usage: replace % with environment directory name, e.g. for rnd:
# make apply-rnd
# DEBUG level logs will be written to /tmp/DIRNAME-apply-ENV-TIMESTAMP
apply-%: init-% clear
	source .env && \
	cd $* && \
	terraform apply --auto-approve

# Usage: replace % with environment directory name, e.g. for rnd:
# make k8s-destroy-rnd
# DEBUG level logs will be written to /tmp/DIRNAME-destroy-ENV-TIMESTAMP
destroy-%:
	source .env && \
	cd $* && \
	terraform init && \
	terraform destroy && \
	rm -rf outputs

initialise-helm:
	helm repo add helm-stable https://charts.helm.sh/stable
	helm repo update

prepare-operator:                                                                                             
	helm repo add mariadb-operator https://helm.mariadb.com/mariadb-operator
	helm install mariadb-operator mariadb-operator/mariadb-operator

install-operator:
	kubectl apply -f config
	kubectl apply -f examples/mariadb_galera_maxscale.yaml

install-photo:
	helm repo add photo-app https://mmontes11.github.io/charts
	kubectl apply -f examples/photo-prism.yaml
	helm install --version 0.10.0 photo-app photo-app/photoprism -f examples/photo-prism-values.yaml
