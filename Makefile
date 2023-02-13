.PHONY: help
help: ## Prints help for targets with comments
	@grep -E '^[/a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


.PHONY: build
build: ## build docker image
	gcloud --project ${PROJECT_ID} builds submit --tag asia-northeast1-docker.pkg.dev/${PROJECT_ID}/my-example-repo/ubuntu:latest .
