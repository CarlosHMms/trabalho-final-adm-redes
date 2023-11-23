# Trabalho Final

## Projetando, implantando e gerenciando uma rede empresarial usando tecnologia Linux, com ênfase em serviços como DHCP, DNS, Web, FTP, NFS e virtualização com Vagrant e Docker.

### Descrição do Trabalho:

- O trabalho tem como objetivo criar um ambiente virtualizado com a tecnologia Vagrant, onde nesse ambiente será criado (utilizando Docker) conteiners que irão oferecer serviços como DHCP, DNS, Web, FTP e NFS.

### Tecnologias Utilizadas

- Vagrant
- Docker
- VirtualBox

### Imagens Docker Utilizadas

- [Imagem DHCP](https://hub.docker.com/r/networkboot/dhcpd)
- [Imagem FTP](https://hub.docker.com/r/ustclug/ftp)
- [Imagem NFS](https://hub.docker.com/r/openebs/nfs-server-alpine)
- [Imagem HTTP](https://hub.docker.com/_/httpd)
- [Imagem DNS]()

### Box Vagrant Utilizada

- [ubuntu/focal64](https://app.vagrantup.com/ubuntu/boxes/focal64)

### Funcionamento

Para que o usuário consiga rodar o projeto, ele deverá clonar este repositório em seu computador e ter instalado na sua máquina as seguintes ferramentas:

- Vagrant
- Docker
- Composer
- VirtualBox

Para instalar as ferramentas você deverá rodar no seu **terminal Linux** os seguintes comandos:

```shell
sudo apt-get install -y vagrant docker composer docker-composer virtualbox
```

E depois executar os seguintes comandos para procurar possiveis atualizações nas ferramentas:

```shell
sudo apt update
sudo apt upgrade -y
```

### Topologias e Estruturas Utilizadas

- A máquina virtual principal (VM1) será configurada com o ip privado 192.168.56.2 com a seguinte máscara de sub-rede 255.255.255.254/24

- O primeiro container docker que será criado é um container que proverá serviços DHCP. O container receberá um arquivo [dhcp.conf]() contendo as devidas configurações para o serviço. Também, o container será vinculado a porta 67/udp da **vm1**.

- O segundo container irá provisionar um serviço FTP que permitirá que exista transferencia de arquivos na rede.

- O terceiro será um conteiner NFS que irá permitir a transferência de diretorios na rede, semelhante ao serviço FTP

- O quarto será um conteiner apache que irá hospedar sites internos permitindo o acesso por todos na rede.

- Por último um servidor DNS para resolver os nomes de dominio dentro da rede.
