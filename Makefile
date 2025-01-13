.PHONY: all clean docker-image

SHELL := /usr/bin/env bash

all: clean docker-image

clean: @rm -rf .cache

docker-image:
	  docker build -t funny-agent -f Dockerfile .
