new:
	docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material new .

serve:
	docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material

build:
	docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build

publish:
	docker run --rm -it -v ~/.ssh:/root/.ssh -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy --force
