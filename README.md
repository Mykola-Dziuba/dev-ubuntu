Well, here I will describe how the deployment works and how to run it.

Directory structure:

1. app-deploy.sh - Bash script for containerization and deployment application
2. main.py - The main file of the application
3. Dockerfile - A file that creates an image with application dependencies
4. docker-compose.yml - A file that builds and runs containers with the application
5. .dockerignore - A file that contains files and directories that are not needed inside the container

To run the application you need to run a virtual machine or just have an Ubuntu Desktop 20.04 system installed. Сopy the file app-deploy.sh from the repository https://github.com/Mykola-Dziuba/dev-ubuntu in any of the directories. Open a command prompt, go to the directory with the file and run the command:

- sudo bash app-deploy.sh
  The algorithm of the script is described in the comments inside app-deploy.sh
