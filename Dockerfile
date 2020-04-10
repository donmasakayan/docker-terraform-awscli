# Base Image - ubuntu (AWS CLI v2 isn't supported in Alpine Linux)
FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install curl unzip

# Download and install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# Download and install Terraform
RUN curl "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip" -o "terraform_0.12.24_linux_amd64.zip"
RUN unzip terraform_0.12.24_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform

RUN aws --version
RUN terraform version