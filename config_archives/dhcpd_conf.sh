sudo apt update
sudo apt install -y docker-compose docker.io docker

sudo docker pull networkboot/dhcpd
sudo touch dhcpd.conf 
sudo chmod 777 dhcpd.conf

echo 'option domain-name "bsi.com";
option domain-name-servers 8.8.8.8, 8.8.4.4;

default-lease-time 600;
max-lease-time 7200;

authoritative;

subnet 192.168.56.0 netmask 255.255.255.0 {
  range 192.168.56.1 192.168.56.254;
  option routers 192.168.56.10;
  option subnet-mask 255.255.255.0;
  option broadcast-address 192.168.56.255;
}' > dhcpd.conf

sudo docker run -d --volume /home/vagrant:/data --name dhcp_server --net host --restart always networkboot/dhcpd