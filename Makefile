# Minimal makefile for building and publishing pypub

build: clean setup

clean:
	rm -rf build/ dist/ .eggs/ *.egg-info/

setup:
	python -m build

publish-test:
	twine upload -r testpypi dist/*

publish:
	twine upload dist/*
