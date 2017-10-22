SHELL := /bin/bash
CURRENT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: clean build test

clean:
	@echo "Clean"
	rm -rf .py36

build:
	@echo "Build"
	virtualenv .py36 -p /usr/local/bin/python3.6
	.py36/bin/pip install -r requirements.txt
	.py36/bin/python setup.py develop
test:
	@echo "Run Tests"
	.py36/bin/pybot test.robot

