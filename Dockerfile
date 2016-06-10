FROM python:3.5
MAINTAINER Firestack <me@stackfire.io>

# Install required packages
RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      ca-certificates \
      wget \
      apt-transport-https \
      vim \
      git \
      python3-psycopg2

# Copy assets
COPY Assets/ /assets/
RUN /assets/setup.sh

# Expose web
EXPOSE 8443 8080

# Define data volumes
VOLUME ["/etc/MOTAPI", "/var/log/MOTAPI", "/srv/MOTAPI"]

CMD [ "/assets/start.sh" ]
