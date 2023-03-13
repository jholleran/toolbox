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


RUN echo "Welcome to the general developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app dev-env"