#
# kali Desktop (LXDE) Dockerfile
#
# https://github.com/yikongge/DesktopKaliByDocker
#

# Pull base image.
FROM kalilinux/kali

# Install LXDE and VNC server.
COPY sources.list /etc/apt/
#RUN apt-get update --fix-missing
RUN cat /etc/apt/sources.list
RUN \
  apt-get update
RUN \
  #sh -c 'echo -e "\n1\n" | apt-get install -y lxde-core lxterminal tightvncserver '
  DEBIAN_FRONTEND="noninteractive" apt-get install -y lxde-core lxterminal tightvncserver 
RUN \
  #apt-get install -y kali-linux-all
  DEBIAN_FRONTEND="noninteractive" apt-get install -y kali-linux-all
COPY vncserver /usr/bin/
# Define working directory.
#WORKDIR /data

# Define default command.
#CMD ["bash"]

# Expose ports.
EXPOSE 5902
