FROM debian

# Update Software repository
RUN apt update && apt upgrade --yes

WORKDIR /app

RUN apt install -y \
    curl \
    wget \
    gnupg \
    software-properties-common

RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint


RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update && apt-get install terraform && terraform -help

RUN wget -O- https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
RUN rm -rf /usr/local/go \
  && wget -O- https://go.dev/dl/go1.20.2.linux-amd64.tar.gz | tar -C /usr/local -xz \
  && export PATH=$PATH:/usr/local/go/bin \
  && go version

RUN echo "Welcome to the IOC environment developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app ioc-env"
