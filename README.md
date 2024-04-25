# Archlinux-Development-Container
The definition of a Docker container to build a development / CI environment on Archlinux. Also contains a Github Action to automatically push the image to Docker Hub.

Note that there seem to be different standards for handling Docker usernames depending on where they are input. I had my Docker username with a couple capital letters saved for logging into the Docker hub website, and I was able to log in. However, when logging in through CLI (including in the github action used in this repo) the username had to precisely match my user ID from Dockerhub (which is all lowercase).
