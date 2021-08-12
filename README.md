# Capstone Project for Udacity DevOps Nanodegree
This project fulfills the requirements of the Udacity DevOps Capstone Project. A web app is containerized and deployed to a kubernetes cluster. This webapp runs a simple apache site.

## :page_with_curl:  _Information on Some of the files_

**1)** `initial-setup.sh` - This file is the first file to look at when setting up this project. It installs the required packakages to make this project work such as Docker, Jenkins, Kubectl, eksctl, hadolint etc. Refer to the Medium article to see how and when it is used.
**2)** `kubernetes/` - This folder contains the kubernetes resource configuration files that will deploy the application image on AWS EKS using `kubectl` once configured properly.
**3)** `Jenkinsfile` - This file contains the definition of the stages in the pipeline. The stages in this project's pipeline are `Lint files`, `Building image`, `Upload Image to Docker hub`, `Remove Unused docker image`, `Update Kube Config` and `Deploy Updated Image to Cluster`.
**4)** `Makefile` - This file contains shell commands that can be executed using the `Make` linux tool.
**5)** `Dockerfile` - This file contains all the commands needed to assemble the app image.
**6)** `run_docker.sh` - This file contains the shell commands needed to build the image on docker locally and also run a container.
**7)** `run_kubernetes.sh` - This file contains the shell commands needed to deploy the app in a kubernetes cluster running locally.
**8)** `upload_docker.sh` - This file contains the shell commands needed to upload the docker image to docker hub.

### Problem Statement
Build a CI/CD pipeline for a microservices application with blue-green deployment strategy. Containerize the application in a Dockerfile and enable typographical linting with a linter. Finally, utilize a cloud formation template to deploy an EKS cluster.

### Technology stack
This project is an amalgamation of the following technologies :
* AWS
* Jenkins
* Kubernetes
* Docker

### Features
* The project consists of a Jenkinsfile with scripted pipeline syntax to deploy a microservice via CI/CD pipeline using blue-green deployment technique. The project also encorporates typographical checking or linting for Dockerfiles using hadolint. Automation server being utilized for this project is Jenkins which was equipped with several required plugins such as Blue Ocean, AWS Pipeline, Docker, etc.
* Global credentials were stored for docker hub and aws iam user in Jenkins to facilitate pushing built docker image to dockerhub and deploying to AWS Elastic Kubernetes Service.

* Continuous Integration phase of the pipeline would include checking out code from SCM and typographical checking on the Dockerfile. The Dockerfile uses nginx 1.8-alpine image for rendering a simple HTML page which shows which type of deployment (blue or green) is being deployed.
The project uses Cloud Formation template to deploy an EKS cluster.

## :page_with_curl:  _Local Docker and Kubernetes Setup_

To run this app using docker, a script has been attached that builds an image from the Dockerfile and spins up a container running the web app:

__`❍ ./run_docker.sh `__
There is also a script that uploads the Docker image to a designated repo. This should be edited before execution:

__`❍ ./upload_docker.sh `__
A script that deploys the Docker Image to a local Kubernetes Cluster is also available:

__`❍ ./run_kubernetes.sh `__
Please view the aforementioned scripts before running to understand the logic behind them.

__*Happy development & deployment!*__





