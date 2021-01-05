FROM ubuntu:20.04
ENV GOPATH=/home/go
ENV PATH=${PATH}:/usr/local/go/bin
RUN mkdir -p /home/app
COPY . /home/app/
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install   \
    --no-install-recommends                             \
    ca-certificates                                     \
    curl                                                \
    vim                                                 \
    git
RUN curl -kL https://dl.google.com/go/go1.15.linux-amd64.tar.gz \
    | tar -C /usr/local/ -xzf -
WORKDIR /home/app
CMD ["/bin/bash"]
