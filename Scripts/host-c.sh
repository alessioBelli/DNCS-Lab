export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker

sudo docker pull dustnic82/nginx-test
sudo docker run --name nginx -p 80:80 -d dustnic82/nginx-test

# Startup commands go here

sudo ip add add 192.168.2.2/26 dev enp0s8
sudo ip link set dev enp0s8 up
sudo ip route add 10.1.1.0/30 via 192.168.2.1
sudo ip route add 192.168.0.0/22 via 192.168.2.1