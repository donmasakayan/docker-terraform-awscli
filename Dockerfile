# Base Image - Postgres
FROM banst/awscli


# Install curl
RUN apk add curl unzip

RUN curl "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip" -o "terraform_0.12.24_linux_amd64.zip"
RUN unzip terraform_0.12.24_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform

RUN terraform version

# Install AWS CLI
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# RUN echo "yo"
# RUN unzip awscliv2.zip
# RUN ls -la
# RUN pwd
# RUN ./aws/install
