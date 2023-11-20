# Trabalho Final

## Projetando, implantando e gerenciando uma rede empresarial usando tecnologia Linux, com ênfase em serviços como DHCP, DNS, Web, FTP, NFS e virtualização com Vagrant e Docker.

### Descrição do Trabalho:

- O trabalho tem como objetivo criar um ambiente virtualizado com a tecnologia Vagrant, onde nesse ambiente será criado (utilizando Docker) conteiners que irão oferecer serviços como DHCP, DNS, Web, FTP e NFS.

### Tecnologias Utilizadas

- Vagrant
- Docker

### Imagens Docker Utilizadas

- docker bla bla bla bla
- bla bla bla bla
- bla vla lba abla
- dracarys

### Funcionamento

Para que o usuário consiga rodar o projeto, ele deverá clonar este repositório em seu computador e ter instalado na sua máquina os seguintes programas:

- Vagrant
- Docker
- Composer

Para instalar você deverá rodar no **terminal Linux** os seguintes comandos:

```shell
sudo su
apt-get install -y vagrant docker composer docker-composer
```

```Ruby
Vagrant.configure("2") do |config|

# VM 1
  config.vm.box = "ubuntu/focal64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
  config.vm.define "vm1" do |virtual|

    virtual.vm.network "private_network", ip: "192.168.56.1"

    virtual.vm.synced_folder "./config_archives", "/vm_config"

    virtual.vm.provision "shell", path: "./config_archives/cfgs/instalacao.sh"

    virtual.vm.hostname = "VirtualMachine"
  end
end
```
