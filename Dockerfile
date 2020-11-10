FROM ubuntu:18.04

# Dependencias
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    sudo \
    protobuf-compiler \
    && apt-get clean
RUN git clone https://github.com/Robotech-UFPA/Vsss_2020.git
ENTRYPOINT ["/Vsss_2020/robotech-Client/main", "blue", "224.0.0.1"]
