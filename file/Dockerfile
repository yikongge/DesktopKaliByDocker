#
# kali Desktop (LXDE) Dockerfile
#
# https://github.com/yikongge/DesktopKaliByDocker
#

# Pull base image.
FROM kalilinux/kali-linux-docker

# Install LXDE and VNC server.
COPY source.list /etc/apt/
RUN \
  apt-get update
RUN \
  apt-get install -y lxde-core lxterminal tightvncserver 
RUN \
  apt-get install -y kali-linux-all
COPY vncserver /usr/bin/
# Define working directory.
#WORKDIR /data

# Define default command.
#CMD ["bash"]

# Expose ports.
EXPOSE 5902
