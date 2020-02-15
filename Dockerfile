FROM ubuntu:18.04
MAINTAINER Haplo <haplo@haplolabs.io>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y wget unzip openssh-client && \
    wget https://releases.hashicorp.com/vault/1.3.1/vault_1.3.1_linux_amd64.zip && \
    wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip && \
    unzip vault_1.3.1_linux_amd64.zip && \
    unzip terraform_0.11.14_linux_amd64.zip && \
    rm vault_1.3.1_linux_amd64.zip && \
    rm terraform_0.11.14_linux_amd64.zip && \
    mv ./terraform /bin && \
    mv ./vault /bin
