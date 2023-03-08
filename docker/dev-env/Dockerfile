FROM ubuntu

WORKDIR /app

# Update Ubuntu Software repository
RUN apt update

RUN apt install -y git jq

RUN echo "Welcome to the general developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app dev-env"