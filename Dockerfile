ARG image=public.ecr.aws/ubuntu/ubuntu:22.04

FROM ${image}

WORKDIR /agent-go

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends --no-install-suggests \
        ca-certificates \
        gnupg2 \
        software-properties-common \
        wget \
        git \
        findutils \
        unzip \
        make

RUN wget https://apt.llvm.org/llvm.sh \
    && chmod +x llvm.sh \
    && ./llvm.sh 17

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
