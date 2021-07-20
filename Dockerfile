FROM centos:latest
MAINTAINER kovidgm@gmail.com
RUN yum install -y httpd \
  git
WORKDIR /var/www/html
RUN git clone https://github.com/kovid5298/test.git
RUN cp -rvf test/* .
RUN rm -rf test
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

