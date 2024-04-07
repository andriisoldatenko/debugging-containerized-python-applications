# Latest commit hash
GIT_SHA=$(shell git rev-parse HEAD)

# If working copy has changes, append `-local` to hash
GIT_DIFF=$(shell git diff -s --exit-code || echo "-local")
GIT_REV=$(GIT_SHA)$(GIT_DIFF)

build-sha:
	docker build -f Dockerfile-git-rev-parse -t git-rev-parse --build-arg GIT_SHA=$(GIT_REV) .

.PHONY: build-sample-app
build-sample-app: ## Build docker image for sample-app
	docker build -f Dockerfile -t asoldatenko/py-sample-app .

.PHONY: build-sample-app-debug
build-sample-app: ## Build docker image for sample-app
	docker build -f Dockerfile-debugpy -t asoldatenko/py-sample-app-debug .

.PHONY: run-sample-app
	docker run -p 8000:8000 asoldatenko/py-sample-app
