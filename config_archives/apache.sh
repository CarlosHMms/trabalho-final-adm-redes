docker run -dit --name web_apacheServer -p 8080:80 -v /www:/usr/local/apache2/htdocs/ httpd:2.4

sudo docker exec -it web_apacheServer bash -c "echo '<h1>Estou Funcionando</h1>' > /usr/local/apache2/htdocs/index.html"