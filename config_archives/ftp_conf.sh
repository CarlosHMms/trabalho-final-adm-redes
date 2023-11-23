# mkdir ftp
# sudo chmod 777 ftp

sudo docker run -itd --restart=always -p 21:21 -p 80:80 -p 40000-40050:40000-40050 -v $LOCAL_DIR/data:/srv/ftp -v $LOCAL_DIR/log:/var/log -v $LOCAL_DIR/home:/home -e PRIVATE_PASSWD=secret -e PASV_ADDRESS=192.168.56.3 --name ftp_server ustclug/ftp
