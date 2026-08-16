FROM i386/ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine32 && \
    rm -rf /var/lib/apt-lists/*
WORKDIR /app
CMD ["bash"]
