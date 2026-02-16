FROM docker:dind

COPY Ubuntu-24.04.Dockerfile .

# Install GEHC root certificates
#RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca1.crt http://aia.ge-healthcare.net/gehealthcarerootca1.pem
#RUN wget -O /usr/local/share/ca-certificates/gehealthcarerootca2.crt http://aia.ge-healthcare.net/gehealthcarerootca2.pem
COPY gehealthcarerootca1.crt gehealthcarerootca2.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

# Verify working TLS
RUN wget https://raw.githubusercontent.com/forderud/QtWasm/refs/heads/master/README.md

# copy GEHC root certificates for nested container access
# WORKDIR is "/"
COPY gehealthcarerootca1.crt gehealthcarerootca2.crt .

# Test docker-in-docker (dind)
# RUN docker build -f Ubuntu-24.04.Dockerfile .
