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

### Estruturação das VMs

- vm1
  - Esta máquina virtual irá hospedar todos os serviços listados anteriormente.
  - A ela é atribuido o IP 192.168.56.2.
- vmTeste
  - Já esta máquina virtual servirá apenas para realizar os devidos testes a cada serviço oferecido pela vm1. O ip dela será atribuido pelo serviço DHCP da vm1.

### Topologias, Estruturas Utilizadas e Funcionamento dos Serviços

- A máquina virtual principal (VM1) será configurada com o ip privado 192.168.56.2 com a seguinte máscara de sub-rede 255.255.255.254/24, será por esse ip que será possivel acessar os serviços FTP

- O primeiro container docker que será criado é um container que proverá serviços DHCP. O container receberá um arquivo [dhcp.conf]() contendo as devidas configurações para o serviço. Também, o container será vinculado a porta 67/udp da **vm1** e será por ela o servidor DHCP atribuirá o ip para novas maquinas que aparecerem na rede.

- O segundo container irá provisionar um serviço FTP que permitirá que exista transferencia de arquivos na rede. O serviço ira utilizar por padrão a porta 21 e reservar o algumas como da 47400 até a 47470.

- O terceiro será um conteiner NFS que irá permitir a transferência de diretorios na rede, semelhante ao serviço FTP

- O quarto será um conteiner apache que irá hospedar sites internos permitindo o acesso por todos na rede.

- Por último um servidor DNS para resolver os nomes de dominio dentro da rede.

### Testes e resultados

- Os serviços foram testados na seguinte sequência

  - DHCP
  - DNS
  - FTP
  - NFS
  - Servidor WEB Apache

- #### DHCP

  - Para testar o servidor DHCP podemos apenas adicionar uma nova máquina à rede, assim esperamos que o nosso serviço implementado cuide de atribuir um novo IP a essa máquina.

- #### DNS

  -

- #### FTP

  -

- #### NFS

  -
