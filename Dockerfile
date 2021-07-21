FROM centos:latest
MAINTAINER kovidgm@gmail.com
RUN yum install -y httpd \
  git
WORKDIR /var/www/html
RUN https://github.com/kovid5298/kovid2.git
RUN cp -rvf kovid2/test/* .
RUN rm -rf kovid2
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

