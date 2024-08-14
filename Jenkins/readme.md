# README.md

## Jenkins Learning Journey

This folder documents my comprehensive learning journey with Jenkins, covering everything from installation to advanced configurations and usage. Jenkins is an open-source automation server that facilitates continuous integration and continuous delivery (CI/CD). This repository serves as a detailed guide for setting up, configuring, and using Jenkins effectively.

### Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installing Jenkins](#installing-jenkins)
- [Post-Installation Steps](#post-installation-steps)
- [Accessing Jenkins](#accessing-jenkins)

## Introduction

Jenkins is a popular tool for automating various aspects of software development, including building, testing, and deploying applications. This repository includes detailed instructions, examples, and best practices that I have gathered throughout my learning journey.

## Prerequisites

Before installing Jenkins, ensure your Ubuntu server is up-to-date and that Java is installed, as Jenkins requires Java to run.

1. **Update the Package List:**
    ```sh
    sudo apt update -y
    ```
    Keeping the package list up-to-date ensures that you install the latest available versions of software packages.

2. **Install Java:**
    ```sh
    sudo apt-get install default-jre -y
    ```
    Jenkins requires Java Runtime Environment (JRE) to run. The above command installs the default JRE package on your system.

## Installing Jenkins

1. **Add the Jenkins Repository Key:**
    ```sh
    sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
    ```
    This command downloads the Jenkins repository key and saves it in the keyring, ensuring the package is authenticated.

2. **Add the Jenkins Repository:**
    ```sh
    echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
    ```
    This command adds the Jenkins repository to your system’s software repository list, enabling you to install Jenkins using the package manager.

3. **Update the Package List:**
    ```sh
    sudo apt-get update
    ```
    Updating the package list again includes the Jenkins repository.

4. **Install Jenkins:**
    ```sh
    sudo apt-get install jenkins -y
    ```
    This command installs Jenkins on your server.

## Post-Installation Steps

1. **Start Jenkins:**
    ```sh
    sudo systemctl start jenkins
    ```
    This command starts the Jenkins service.

2. **Enable Jenkins to Start on Boot:**
    ```sh
    sudo systemctl enable jenkins
    ```
    This ensures that Jenkins starts automatically whenever the server is rebooted.

3. **Open Port 8080:**
    Ensure that port 8080 is open on your server's firewall to allow access to Jenkins.
    ```sh
    sudo ufw allow 8080
    sudo ufw reload
    ```

4. **Verify Jenkins is Running:**
    You can check the status of Jenkins by running:
    ```sh
    sudo systemctl status jenkins
    ```

## Accessing Jenkins

1. **Find Jenkins Port:**
    Ensure that Jenkins is running on port 8080:
    ```sh
    ps -f | grep jenkins
    ```

2. **Open Jenkins in a Browser:**
    Navigate to `http://<server-public-ip>:8080` in your web browser. 

3. **Retrieve Initial Admin Password:**
    You will be prompted to enter the initial admin password, which you can find at:
    ```sh
    cat /var/lib/jenkins/secrets/initialAdminPassword
    ```

4. **Install Suggested Plugins:**
    After logging in, select the option to install the suggested plugins for a standard Jenkins setup.
