# Desktop-Kali by Docker

###### by:小帽

#### 使用：

git clone https://github.com/yikongge/DesktopKaliByDocker.git

cd DesktopKaliByDocker

chmod +x kali.sh

ln -s kali.sh:/usr/bin/kali

docker run -v /tmp/.X11-unix/:/tmp/.X11-unix -v ~/fileinkali:/media --restart=always -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE -p 5091:5091 -it --name kali kali:v1 /bin/bash