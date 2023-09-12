FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-suggests \
    ca-certificates \
    wget

RUN wget https://github.com/tcnksm/ghr/releases/download/v0.16.0/ghr_v0.16.0_linux_amd64.tar.gz && \
    tar -xvf ghr_v0.16.0_linux_amd64.tar.gz && \
    mv ghr_v0.16.0_linux_amd64/ghr /usr/local/bin/ghr && \
    rm -rf ghr_v0.16.0_linux_amd64.tar.gz ghr_v0.16.0_linux_amd64