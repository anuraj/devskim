![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/anuraj/devskim)
![Docker Pulls](https://img.shields.io/docker/pulls/anuraj/devskim.svg)

# DevSkim Docker Container

The unofficial Docker image for Microsoft DevSkim - DevSkim is a framework of IDE extensions and Language analyzers that provide inline security analysis in the dev environment as the developer writes code. More details about DevSkim - https://github.com/microsoft/DevSkim

> This image built using DevSkim CLI tools version 0.1.11

### Basic Usage

You can run the following command to analyze your source code with docker image.

`docker run -v C:\Code\:/code anuraj/devskim:latest analyze /code`

### Docker Tags

Current tag to track is `latest`.
