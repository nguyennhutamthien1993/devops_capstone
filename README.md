# devops_capstone
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nguyennhutamthien1993/devops_capstone/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nguyennhutamthien1993/devops_capstone/tree/main)

## Project Overview

As a capstone project, the directions are rather more open-ended than they were in the previous projects in the program. You will also be able to make some of your own choices in this capstone, for the type of deployment you implement, which services you will use, and the nature of the application you develop.

You will develop a CI/CD pipeline for micro services applications with either blue/green deployment or rolling deployment. You will also develop your Continuous Integration steps as you see fit, but must at least include typographical checking (aka “linting”). To make your project stand out, you may also choose to implement other checks such as security scanning, performance testing, integration testing, etc.!

Once you have completed your Continuous Integration you will set up Continuous Deployment, which will include:

Pushing the built Docker container(s) to the Docker repository (you can use AWS ECR, create your own custom Registry within your cluster, or another 3rd party Docker repository) ; and
Deploying these Docker container(s) to a small Kubernetes cluster. For your Kubernetes cluster you can either use AWS Kubernetes as a Service, or build your own Kubernetes cluster. To deploy your Kubernetes cluster, use either Ansible or Cloudformation. Preferably, run these from within Jenkins or Circle CI as an independent pipeline.
### Project Tasks

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:
* Propose and Scope the Project
* Use Circle CI, and implement blue/green or rolling deployment.
* Deploy your containerized application using Docker and make a prediction
* Pick AWS Kubernetes as a Service, or build your own Kubernetes cluster.
* Build your pipeline
* Test your pipeline

## Project steps

1. Build and push docker image
2. Setup Kubernetes Cluster
2. Setup circleci pipeline

### Build and push docker image

```
  $ python3 -m venv ~/.devops_capstone
	$ source ~/.devops_capstone/bin/activate
  $ cd container
  $ make install
  $ make lint
```

### Setup Kubernetes Cluster

```
  $ eksctl create cluster -f template/cluster.yaml
	- install aws cli and gettext-base
  - install aws-iam-authenticator
  $ aws eks --region $AWS_DEFAULT_REGION update-kubeconfig --name $CLUSTER_NAME
	$ kubectl config current-context
  - deploy deployments & services
	$ kubectl get all
	$ kubectl get nodes
```
### Setup circleci pipeline

Add environments variables for pipeline with aws:
![environments.png](./screenshots/environments.png)

### Structure
1. The `.circleci` folder includes a `config.yml` file that check project code build status. It is indicated by a badge status is attached at Top of README.md
2. The `container` folder contains source code to build and push docker image
3. The `kubernetes` folder contains code of deploy deployments and service to cluster
4. The `screenshots` folder contains steps during implement capstone project
5. The `template` folder contains cluster aws template to deploy