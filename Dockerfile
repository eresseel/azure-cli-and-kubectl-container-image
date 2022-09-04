FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -qqy ca-certificates curl apt-transport-https lsb-release gnupg

RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | \
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ `lsb_release -cs` main" | \
    tee /etc/apt/sources.list.d/azure-cli.list

RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg \
    https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | \
    tee /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update && apt-get install -qqy azure-cli=2.39.0-1~focal kubectl=1.25.0-00
