FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive

WORKDIR /works
RUN apt-get update

# install C
RUN apt-get install -y wget gnupg1
RUN apt-get install musl-dev -y
RUN apt-get install build-essential -y
RUN apt-get install cmake -y 

# install boost
RUN apt-get install git -y
RUN apt install libboost-all-dev -y
RUN apt install aptitude -y
RUN aptitude search boost

# install ninja
RUN apt-get install ninja-build -y 

# install code-server
WORKDIR /works
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sSOL https://github.com/cdr/code-server/releases/download/v3.8.0/code-server_3.8.0_amd64.deb
RUN dpkg -i code-server_3.8.0_amd64.deb

## install vscode plugin
RUN code-server --install-extension ms-vscode.cpptools

CMD ["code-server", "--auth","none", "--host","0.0.0.0","--port","8443", "/app"]
