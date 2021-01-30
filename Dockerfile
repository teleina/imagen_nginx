##Descargamos una versión concreta de UBUNTU, a través del tag
FROM ubuntu:12.04
LABEL Apasoft Formacion "apasoft.formacion@gmail.com"
##Actualizamos el sistema
RUN apt update
##Instalamos nginx
RUN apt install -y nginx
##Creamos un fichero index.html en el directorio por defecto de nginx
RUN echo 'Mi primer Dockerfile' > /usr/share/nginx/www/index.html
##Arrancamos NGINX a través de ENTRYPOINT para que no se pueda 
##modificar en la creación del contenedor
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
##Exponemos el Puerto 80
EXPOSE 80
