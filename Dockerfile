#FROM php:7.2.4-apache
#
#MAINTAINER "Mirza Oglecevac"
#
#RUN a2enmod rewrite
#
#COPY index.php /var/www/html
#
#RUN service apache2 restart
#
#EXPOSE 80
# docker run -d -p 8000:80 image_id

# base image upon we create our - we need webserver (apache2) and php to run our application in container
FROM php:7.2.4-apache

MAINTAINER "Mirza Oglecevac"

# to rewrite requested URLs on the fly
RUN a2enmod rewrite

# copy our project files to apache2 root folder for serving web content
COPY index.php /var/www/html

# restart apache2 webserver to run it
RUN service apache2 restart

# set on which port will container be listening - HTTP and HTTPS
EXPOSE 80
EXPOSE 443

