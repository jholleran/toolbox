FROM ubuntu

# Update Ubuntu Software repository
RUN apt update
RUN apt upgrade

WORKDIR /app

RUN apt install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN apt install -y nodejs

RUN node --version

RUN npm install --global yarn


EXPOSE 2000 3000 4200 9090

# RUN echo 'export PS1="[\033[37m\]\u@node-env] \w # "' >> /root/.bash_profile

RUN echo "Welcome to the node environment developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app node-env"
