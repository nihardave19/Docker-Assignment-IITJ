PHP Web Application Deployment Using Docker
Author Details
Author: Nihar Dave
Roll Number: G23AI2097

App Functionality
This PHP web application is designed to display a simple webpage served using the Apache web server. The application is deployed using Docker, enabling easy containerization and portability across different environments.

Process Followed

Step 1: Setting Up Docker on Windows

Install Docker Desktop:
Download Docker Desktop for Windows from the official Docker website.
Run the installer and follow the on-screen instructions to complete the installation.
After installation, launch Docker Desktop and ensure it is running.

Step 2: Create a PHP Web Application

i) Project Directory Structure:
vcc_app/
├── docker-compose.yml
├── Dockerfile
└──vcc_app.php
    

ii) Create a PHP File:
Create a directory named vcc_app.
Inside vcc_app, create a PHP file named vcc_app.php


Step 3: Create Docker Configuration Files

i) Create a Dockerfile:
Inside the vcc_app directory, create a file named Dockerfile

ii) Create a docker-compose.yml File:
In the vcc_app directory, create a file named docker-compose.yml 


Step 4: Build and Run the Docker Containers

i) Navigate to the Project Directory

ii) Build the Docker Images
docker-compose build

iii) Run the Docker Containers
docker-compose up

iv) Access the Application:
Open a web browser and go to http://localhost/vcc_app.php. You should see the message "Welcome to My PHP Web App".


Step 5: Version Control with Git

i) Initialize a Git Repository:
git init

ii) Add Files to the Repository:
git add .

iii) Commit the Changes:
git commit -m "Initial commit"

iv) Create a New Repository on GitHub:
Go to GitHub and create a new repository.

v) Add the Remote Repository:
git remote add origin https://github.com/nihardave19/Docker-Assignment-IITJ

vi) Push the Changes to GitHub:
git push -u origin main


Conclusion
This guide walks you through the process of setting up a simple PHP web application using Docker, pushing the code to GitHub, and managing branches effectively. By following these steps, you will be able to create a portable and easily deployable web application environment.