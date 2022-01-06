# EKS Terraform Demo

## Description
This repo contains files in support of an integration between the Sophos Factory, AWS EKS, and Terraform. The goal is to use the Refactr Platform pipeline to launch an AWS Elastic Kubernetes Cluster (EKS) using Terraform step modules.

## Requirements
* An AWS account 
* A Sophos Factory account 
* An AWS user with 
    * An Access Key 
    * Permission to do build an EKS cluster and associated resources
    * Access to a S3 Bucket to store terraform state

## Instructions
* In AWS
    * If you don't already have one, create an IAM user with programmatic access and have the access key id and secret access key available for later
    * Assign the user the appropriate permissions to deploy the Terraform configuration in this repo
* In Sophos Factory
    * Create a new Job using the following settings:
        * Pipeline: * **Launch EKS Cluster**
        * Revision: **latest**
* Run the job

## Resources
* [Sophos Factory Community Edition](https://www.refactr.it/community-edition)
* [Create AWS Account](https://aws.amazon.com/resources/create-account/)