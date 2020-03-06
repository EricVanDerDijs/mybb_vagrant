sudo apt-get update && apt-get upgrade -y

sudo apt-get install \
        php7.3 \
        php7.3-cli \
        php7.3-fpm \
        php7.3-gd \
        php7.3-mbstring \
        php7.3-xml \
        php7.3-mysql \
        php7.3-pgsql -y

sudo apt-get install nginx -y

sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        bionic \
        stable"

sudo apt-get update
sudo apt-get install \
        docker-ce=5:19.03.6~3-0~ubuntu-bionic \
        docker-ce-cli=5:19.03.6~3-0~ubuntu-bionic \
        containerd.io -y

groupadd docker
usermod -aG docker vagrant
newgrp docker

curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose