FROM docker:dind

RUN apt-get update
RUN apt-get install -y wget ca-certificates

# Install GEHC root certificates
RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca1.crt http://aia.ge-healthcare.net/gehealthcarerootca1.pem
RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca2.crt http://aia.ge-healthcare.net/gehealthcarerootca2.pem
RUN update-ca-certificates

# TLS test
RUN wget https://raw.githubusercontent.com/forderud/QtWasm/refs/heads/master/README.md
