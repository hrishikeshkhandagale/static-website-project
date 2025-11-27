# Handyman Website - Terraform & Jenkins CI/CD

A complete infrastructure-as-code solution for deploying a static handyman/remodelling business website on AWS EC2 with automated deployment using Jenkins.

## 🏗️ Project Overview

This project demonstrates:
- **Infrastructure as Code (IaC)** using Terraform
- **Automated deployment** with Jenkins CI/CD pipeline
- **Web server** using Nginx on Ubuntu EC2
- **Static website** for handyman services

 ## ✅Step 1 — Deploy EC2 instance using Terraform & Install Nginx

In this project, the EC2 instance was created using Terraform.
Along with EC2 provisioning, Nginx was automatically installed using User Data script.

Terraform performed:

EC2 Launch

Security Group creation (Port 22 & 80 allowed)

Nginx installation & webpage setup through shell script

![alt text](image.png)

## ✅Step 2 — I created the Jenkinsfile for CI/CD

After deploying the EC2 instance using Terraform, I created the Jenkinsfile to automate the deployment process.

The Jenkinsfile performs the following tasks 👇

Pull the latest code from GitHub

Connect to the EC2 instance using SSH

Copy the website files to the default Nginx path /var/www/html

Restart Nginx to make the updated website live

![alt text](image-1.png)

## ✅Step 3 — Then I created the Jenkins Pipeline

After writing the Jenkinsfile, I created a Jenkins Pipeline job and connected it with my GitHub repository.

In this pipeline:

Jenkins reads the Jenkinsfile from the repo

On every build, Jenkins deploys the latest code to the EC2 server

The website in /var/www/html gets updated automatically

So now the whole deployment process runs through the pipeline
→ No manual commands
→ No manual uploading of files
→ Everything is automated

![alt text](image-2.png)

## ✅Step 4 — After that I added the GitHub Webhook

Next, I added the GitHub Webhook so that the deployment becomes fully automatic.

With the webhook:

Whenever I push code to GitHub

GitHub sends a trigger to Jenkins

Jenkins automatically starts the pipeline and deploys the latest code to the EC2 server

So now the flow is completely automatic:
Push Code → Jenkins Pipeline → Deploy to /var/www/html → Live Website

No need to press Build Now manually anymore