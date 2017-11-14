FROM ubuntu as builder
RUN apt-get update && apt-get install -y curl
RUN echo "hello" > test

FROM ubuntu
COPY --from=builder test test
RUN apt-get update && apt-get install -y htop
RUN echo test
