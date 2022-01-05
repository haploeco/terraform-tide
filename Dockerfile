FROM ubuntu:20.04
MAINTAINER Haplo <haplo@haplolabs.io>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y wget unzip openssh-client && \
    wget https://releases.hashicorp.com/vault/1.9.2/vault_1.9.2_linux_amd64.zip && \
    wget https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip && \
    unzip vault_1.9.2_linux_amd64.zip && \
    unzip terraform_1.1.0_linux_amd64.zip && \
    rm vault_1.9.2_linux_amd64.zip && \
    rm terraform_1.1.0_linux_amd64.zip && \
    mv ./terraform /bin && \
    mv ./vault /bin
