FROM debian

# Update Software repository
RUN apt update && apt upgrade --yes

WORKDIR /app

RUN apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    git \
    jq

RUN curl --silent https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint


RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update && apt-get install terraform && terraform -help


RUN rm -rf /usr/local/go \
  && curl --silent --location https://go.dev/dl/go1.20.2.linux-amd64.tar.gz | tar -C /usr/local -xz \
  && export PATH=$PATH:/usr/local/go/bin \
  && go version


RUN echo "Welcome to the general developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app dev-env"