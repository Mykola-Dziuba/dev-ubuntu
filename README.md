Well, here I will describe how the deployment works and how to run it.

Directory structure:

1. app-deploy.sh - Bash script for containerization and deployment application from 0 to 100%
2. app-environment.sh - A script that installs all the dependencies of the application
3. app-docker.sh - the script docirizes and run the application
4. main.py - The main file of the application
5. Dockerfile - A file that creates an image with application dependencies
6. docker-compose.yml - A file that builds and runs containers with the application
7. .dockerignore - A file that contains files and directories that are not needed inside the container

Application Installation scenarios:

1. Download the file app-deploy.sh https://github.com/Mykola-Dziuba/dev-ubuntu to any directory. You will need the Ubuntu Desktop 20.04 operating system by installing it directly or use any virtualization solution. Open command line and go to the directory where you downloaded the file and enter the command below.

bash app-deploy.sh

For subsequent launches of the application, use the script app-docker.sh from the directory where the application files are located (cd ~/flask-app/dev-ubuntu)

bash app-docker.sh

2. If on your system Ubuntu Desktop 20.04 Git, Docker, Docker-compose are installed, then just download the files from the github directory https://github.com/Mykola-Dziuba/dev-ubuntu. Go to the directory with the files and run the command

bash app-docker.sh

The principle of how scripts work is described in the comments inside each script. Good luck!
