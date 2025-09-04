FROM ubuntu:22.04
RUN apt-get update \
    && apt-get install -y g++ \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY src/ .
RUN g++ -o add add.cpp && \
    g++ -o mul mul.cpp

CMD ["./add"]
