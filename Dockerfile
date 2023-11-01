FROM centos:7

LABEL maintainer="cloudspace"

RUN yum update -y && yum clean all

RUN yum install httpd -y

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]

CMD [ "-D", "FOREGROUND" ]