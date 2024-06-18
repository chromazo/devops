# GitLab CI/CD Documentation

## Overview

GitLab is a powerful platform used for **Continuous Integration and Continuous Deployment (CI/CD)**, version control, and monitoring. This document provides detailed information on how to create and manage pipelines in GitLab, along with various other features and functionalities.

## Creating a Pipeline in GitLab

To create a pipeline in GitLab, follow these steps:

### 1. Create a .gitlab-ci.yml File
- The pipeline configuration is defined in a file named `.gitlab-ci.yml` located in the root directory of your repository.
- This configuration file is based on YAML syntax.

```yaml
stages:
  - build
  - test
  - deploy

build_job:
  stage: build
  script:
    - echo "Building the application"

test_job:
  stage: test
  script:
    - echo "Running tests"

deploy_job:
  stage: deploy
  script:
    - echo "Deploying the application"
  when: manual
