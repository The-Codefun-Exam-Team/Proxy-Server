# syntax=docker/dockerfile:1

FROM haproxy:2.6.6-alpine

# Set working directory
WORKDIR /haconfig

# Copy config file to /haconfig/haproxy.cfg
COPY haproxy.cfg ./

# Expose HTTP and HTTPS port
EXPOSE 80
EXPOSE 443

# Specify mount point for certs and pems
VOLUME /cert

# Run the haproxy server
ENTRYPOINT ["haproxy", "-f", "haproxy.cfg"]
