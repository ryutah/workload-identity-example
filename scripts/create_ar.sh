#!/usr/bin/env bash

set -eux

project_id=${PROJECT_ID}

gcloud artifacts repositories create my-example-repo \
  --project ${project_id} \
  --repository-format docker \
  --location asia-northeast1 \
  --description "Docker repository"
