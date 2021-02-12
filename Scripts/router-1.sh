export DEBIAN_FRONTEND=noninteractive

# Startup commands go here

sudo sysctl -w net.ipv4.ip_forward=1
sudo ip add add 10.1.1.1/30 dev enp0s9
sudo ip link set dev enp0s9 up
sudo ip link add link enp0s8 name enp0s8.20 type vlan id 20
sudo ip link add link enp0s8 name enp0s8.30 type vlan id 30
sudo ip addr add 192.168.0.1/24 dev enp0s8.20
sudo ip addr add 192.168.1.1/24 dev enp0s8.30
sudo ip link set dev enp0s8 up
sudo ip route add 192.168.2.0/26 via 10.1.1.2