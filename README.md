# NodeJS Hello World CI/CD Pipeline

## Prerequisites
- Terraform
- Docker
- Node

**Overview**

This is a simple CI/CD pipeline for deploying a nodeJS app using Terraform, Docker and Github Actions.

- Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

- GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline. You can create workflows that build and test every pull request to your repository, or deploy merged pull requests to production.

- Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. 

## Directory Structure

- `.github/workflows`: Contains GitHub Actions workflows for CI/CD automation.
- `infra`: Holds infrastructure-related code, specifically for managing VPC and ALB configurations.
- `Dockerfile`: Defines the environment and setup for the application to run inside a Docker container.
- `index.js`: Main file of the application, containing the core logic.
- `package.json`: Lists project metadata and dependencies.
- `package-lock.json`: Auto-generated file that locks the dependencies' versions.

**Task**
- 
*1. Deploy aws infrastructure using terraform.*

Resources created:
1. Virtual Private Cloud
    - subnet 
    - security group
    - internet gateway
    - route table
2. Application Load Balancer
    - load balancer
    - target group
    - listener
    - security group
3. Elastic Container Registry
4. Elastic Container Service
    - ecs cluster
    - ecs service
    - task definition

*2. Configure github actions*

*3. Build the application image using docker*

*4. Push the image using git push to deploy*

