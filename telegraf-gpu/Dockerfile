FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04

RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    curl \
    iputils-ping \
    snmp \
    procps \
    lm-sensors \
    software-properties-common \
    telegraf

