# EKS Terraform Demo

## Description
This repository contains files for an integration between Sophos Factory, AWS EKS, and Terraform. The goal is to use a Factory pipeline to launch an AWS Elastic Kubernetes Cluster (EKS) using Terraform step modules.

## Requirements
* An AWS account 
* A Sophos Factory account 
* An AWS user with 
    * An Access Key 
    * Permission to build an EKS cluster and associated resources
    * Access to a S3 Bucket to store Terraform state

## Instructions
* In AWS
    * If you don't already have one, create an IAM user with programmatic access and have the access key id and secret access key available for later
    * Assign the user the appropriate permissions to deploy the Terraform configuration in this repository
* In Sophos Factory
    * Create a new Job using the following settings:
        * Pipeline: **EKS Cluster**
        * Revision: **latest**
* Run the Job

## Resources
* [Sophos Factory](https://www.sophos.com/en-us/products/sophos-factory)
* [Create AWS Account](https://aws.amazon.com/resources/create-account/)
* [Sophos Factory | AWS Solutions Catalog | EKS Cluster Pipeline](https://app.refactr.it/catalogs/604001f7ea74f973a3bf5ac6/pipelines/61d61da2a44477af4cd6be87)