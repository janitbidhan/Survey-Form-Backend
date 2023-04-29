# SWE 645 Assignment 3: Survey Form (Spring Boot+RDS+EC2+GKE+Rancher+Jenkins+Postman)
## Team
> Name: Janit Bidhan, Badri Nath Gaur
>
> G Number:G01326011, G01330366
>
> Email: [jbidhan@gmu.edu](jbidhan@gmu.edu), [bgaur@gmu.edu](bgaur@gmu.edu)

## Contents
These are better explained in the document in detail:
- Overview
- Links
- Tasks (Explained in document)
- Contributions
- Challenges
- Pre-requisites for the assignment:
- Technology Utilised
- Jenkins Pipline Explanation
- Folder Structure

## Overview
For this assignment, our objective is to develop and deploy a Microservices based containerized application using SpringBoot and Amazon Relational Database Services (RDS) on Kubernetes to enhance its scalability and resilience. Our baseline configuration involves running at least three pods continuously.

To manage the Kubernetes services on GKE in the Google Cloud Platform, we utilize Rancher. Additionally, we have established a CI/CD pipeline that involves a Git source code repository on GitHub and Jenkins for automated build and deployment of the application on Kubernetes.

When changes are made to the code in the GitHub repository, the pipeline automatically triggers a build and deployment process to ensure that the latest version of the application is always available on Kubernetes.

We test the working of our containerized application by calling different CRUD API calls using Postman.

>Note: These are as part of document, location can be seen in the folder Structure i.e. **SWE645-Assignment3.pdf**

>Also there is a video link at the end and the video in the folder itself.
> 
## Links
### Note: Please note that the URLs mentioned below might not work as the AWS Lab (Closes after 4 hours) and GKE clusters were terminated after the demo video was recorded due to their high cost.

>[Access it here on LoadBalancer ](http://34.132.233.154:8080/surveys/1)
>
>[JENKINS](http://54.147.159.251:8080/)
>
>[RANCHER](https://3.229.68.37/dashboard)
>
>[Youtube Private Video Link](https://youtu.be/r0d1-8kPFtQ)
>  (18:56 Demonstrating the CI/CD Process for the Student Survey Backend and Testing It Using Postman)

## Tasks
- Part 1: Create a database using Amazon RDS by setting up Postgres database. The backend of the application is written in SpringBoot to do CRUD operations on the database. The application is then dockerized the application using Docker and dockerhub.
- Part 2: Create EC2 instances using AWS lab for Jenkins and Rancher
- Part 3: Setup Google Cloud Platfrom for GKE
- Part 4: Setup up Rancher to manage and create Kubernetes cluster on GKE.
- Part 5: Manage CI CD using Jenkins, Docker Hub
- Part 6: Test the backend APIs using Postman

# Contributions
> Badri Nath Gaur:
> >Dockerized the application to containerize it, which enabled easy deployment and management on Kubernetes.
Set up Rancher on EC2, providing a user-friendly interface to manage Kubernetes services.
Configured the Kubernetes deployment, including defining the number of replicas, resource allocation, and networking settings.
>
> Janit Bidhan:
> >Created the backend APIs to do CRUD operations and setup the database. 
Managed Rancher on EC2, ensuring smooth operation of Kubernetes services.
Installed Jenkins and configured it to automate build and deployment processes.
Set up the pipeline in Jenkins, defining stages and steps such as compiling code, building the Docker image, pushing to the container registry, and updating the Kubernetes deployment.
>
>  Common Tasks:
> >Collaborate to determine the best approach for building the backend, containerizing and deploying the application on Kubernetes.
Determine the optimal configuration for the Kubernetes deployment, including resource allocation, networking, and scaling policies.
Set up access controls and permissions for the Rancher and Jenkins instances to ensure secure access and prevent unauthorized changes.
Monitored the performance and health of the Kubernetes deployment and made adjustments as needed to optimize efficiency and maintain stability.
Troubleshot any issues that arose during the deployment and worked together to resolve them quickly to minimize downtime.
Using Postman, we were able to test the functioning of the CRUD APIs which ensured that the application was functioning as expected and meeting performance requirements.

## Challenges
> Troubleshooting issues with the Kubernetes deployment, especially when dealing with containerization and networking.
>
> Analyzing and debugging problems caused because of a mis-match in Java versions of Spring Boot and Rancher EC2 machine.
>
> Setting up and configuring access controls and permissions for Rancher and Jenkins.
>
> Making Rancher and Jenkins work together to perform continuous deployment.
>
> Video editing: We faced challenges in syncing each individual video into a collective entity.

## Pre-requisites for the assignment:
1.	IDE for development.
2.	Postman for API testing
3.	DBeaver for Database testing/setup
4.	Docker Desktop for building and testing local image.
5.	Access to AWS Learner lab provided by Dr. Vinod Dubey.
6.	Personal accounts on GitHub, Google Cloud Platform and Docker Hub.


## Technology Utilised
1.	Github
2.	IntelliJ IDE
3.	Postman
4.	Docker Desktop and Docker Hub
5.	AWS EC2, AWS Elastic IP, AWS RDS(Postgres)
6.	DBeaver
7.	Google Cloud Platform (GKE)
8.	Jenkins
9.	Kubernetes
10.	Rancher


## Jenkins Pipline Explanation

This is a Jenkins pipeline script that defines a series of stages for building and deploying a Spring Boot application in a Kubernetes cluster. 

__Prerequisites__: This stage sets up the necessary credentials and environment variables needed for the deployment.

__Checkout__: This stage checks out the source code from the SCM.

__Build__: This stage builds the application using Maven and archives the generated artifacts (JAR file).

__Docker Build and Push__: This stage builds a Docker image of the application and pushes it to a Docker registry.

__Deploy to Kubernetes__: This stage uses the Kubernetes command-line tool (kubectl) to roll out a new version of the application by restarting the deployment with the specified name and namespace. This triggers the Kubernetes cluster to pull the latest version of the Docker image from the Docker registry and deploy it.

The pipeline has been tested and deployed successfully for the SWE 645 course. If there are any changes in the repository, it triggers a jenkins build which replaces the docker image with the new build and deploys on docker.

>[Access it here on LoadBalancer ](http://34.132.233.154:8080/surveys/1)
>
>[JENKINS](http://54.147.159.251:8080/)
>
>[RANCHER](https://3.229.68.37/dashboard)
>
>[Youtube Private Video Link](https://youtu.be/r0d1-8kPFtQ)
>  (18:56 Demonstrating the CI/CD Process for the Student Survey Backend and Testing It Using Postman.)

## Folder Structure
```
.
├── SWE645-Assignment3.pdf
└── survey-form-backend
    ├── Dockerfile
    ├── Jenkinsfile
    ├── README.md
    ├── assignment3.iml
    ├── mvnw
    ├── mvnw.cmd
    ├── pom.xml
    ├── root.crt
    ├── src
    │   ├── main
    │   │   ├── java
    │   │   │   └── com
    │   │   │       └── swe
    │   │   │           └── assignment3
    │   │   │               ├── Assignment3Application.java
    │   │   │               ├── controller
    │   │   │               │   └── SurveyController.java
    │   │   │               ├── models
    │   │   │               │   └── Survey.java
    │   │   │               ├── repository
    │   │   │               │   └── SurveyRepository.java
    │   │   │               └── services
    │   │   │                   └── SurveyService.java
    │   │   └── resources
    │   │       ├── SWE 645 SurveyPage.postman_collection.json
    │   │       ├── application.properties
    │   │       ├── script.sql
    │   │       ├── static
    │   │       └── templates
    │   └── test
    │       └── java
    │           └── com
    │               └── swe
    │                   └── assignment3
    │                       └── Assignment3ApplicationTests.java
    └── target
        ├── assignment3-1.jar
        ├── assignment3-1.jar.original
        ├── assignment3.jar
        ├── classes
        │   ├── SWE 645 SurveyPage.postman_collection.json
        │   ├── application.properties
        │   ├── com
        │   │   └── swe
        │   │       └── assignment3
        │   │           ├── Assignment3Application.class
        │   │           ├── controller
        │   │           │   └── SurveyController.class
        │   │           ├── models
        │   │           │   └── Survey.class
        │   │           ├── repository
        │   │           │   └── SurveyRepository.class
        │   │           └── services
        │   │               └── SurveyService.class
        │   └── script.sql
        ├── generated-sources
        │   └── annotations
        ├── generated-test-sources
        │   └── test-annotations
        ├── maven-archiver
        │   └── pom.properties
        ├── maven-status
        │   └── maven-compiler-plugin
        │       ├── compile
        │       │   └── default-compile
        │       │       ├── createdFiles.lst
        │       │       └── inputFiles.lst
        │       └── testCompile
        │           └── default-testCompile
        │               ├── createdFiles.lst
        │               └── inputFiles.lst
        ├── surefire-reports
        │   ├── TEST-com.swe.assignment3.Assignment3ApplicationTests.xml
        │   └── com.swe.assignment3.Assignment3ApplicationTests.txt
        └── test-classes
            └── com
                └── swe
                    └── assignment3
                        └── Assignment3ApplicationTests.class

45 directories, 37 files
```

