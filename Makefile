#!/usr/bin/env make
SHELL := '/bin/bash'

tests: shellcheck ansible_lint yamllint

# Install dev tools in virtualenv
venv:
	python3 -m venv .venv && \
	source .venv/bin/activate && \
	pip3 install pylint isort ansible-lint yamllint ansible==2.8.0

# Static syntax checker for shell scripts
# install shellcheck before use: sudo apt install shellcheck
shellcheck:
	# ignore 'Can't follow non-constant source' warnings
	shellcheck -e SC1090 xsrv

# Ansible linter
ansible_lint: venv
	source .venv/bin/activate && \
	ansible-lint srv01-playbook.yml.dist || exit 0

# YAML syntax check and linter
yamllint: venv
	source .venv/bin/activate && \
	find ./ -iname "*.yml" -exec yamllint -c .yamllint '{}' \;
