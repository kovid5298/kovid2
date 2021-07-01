FROM centos:latest
MAINTAINER kovidgm@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/earth.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip earth.zip
RUN cp -rvf 2113_earth/* .
RUN rm -rf 2113_earth earth.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
