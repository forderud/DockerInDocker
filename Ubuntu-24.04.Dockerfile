FROM ubuntu:24.04

RUN apt-get update

# Install compiler and libraries
RUN apt-get install -y wget ca-certificates g++ cmake libboost-dev libssl-dev

# Install GEHC root certificates
RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca1.crt http://aia.ge-healthcare.net/gehealthcarerootca1.pem
RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca2.crt http://aia.ge-healthcare.net/gehealthcarerootca2.pem
RUN update-ca-certificates

