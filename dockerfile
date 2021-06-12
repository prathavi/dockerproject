FROM centos:latest
MAINTAINER prathaviraj363@gmail.com
RUN yum inatall -y httpd \
   zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/rento.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rento.zip
RUN cp -rvf rento/* .
RUN rm -rf rento rento.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80