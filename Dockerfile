# syntax=docker/dockerfile:1

FROM haproxy:2.6.6-alpine

# Set working directory
WORKDIR /

# Copy config file
COPY haproxy.cfg ./haproxy.cfg

# Expose HTTP and HTTPS port
EXPOSE 80

EXPOSE 443

# Specify mount point
VOLUME /

# Run the haproxy server
ENTRYPOINT ["haproxy", "-f", "haproxy.cfg"]
