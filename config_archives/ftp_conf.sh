mkdir ftp
sudo chmod 777 ftp

docker run -d -v ftp:/home/vsftpd -p 20:20 -p 21:21 -p 47400-47470:47400-47470 -e FTP_USER=kkazin -e FTP_PASS=kkazin -e PASV_ADDRESS=172.17.0.2 --name ftp_server --restart=always bogem/ftp
