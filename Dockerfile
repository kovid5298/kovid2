FROM centos:latest
MAINTAINER kovidgm@gmail.com
RUN yum install -y httpd 
RUN git clone https://github.com/kovid5298/html.git 
WORKDIR /var/www/html
RUN cp -rvf html/* .
RUN rm -rf html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

