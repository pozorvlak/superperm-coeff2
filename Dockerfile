FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        xz-utils \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf \
    | sh -s -- -y

ENV PATH="/root/.elan/bin:${PATH}"

WORKDIR /src

# Copy only files that determine dependencies.
COPY lean-toolchain lakefile.toml lake-manifest.json ./

RUN lake --version
RUN lake exe cache get

# Copy the remainder of the source.
COPY . .

RUN lake build

