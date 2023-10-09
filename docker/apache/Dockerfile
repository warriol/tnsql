# docker/apache/Dockerfile
FROM httpd:2.4.51

#USER root

COPY tnsql.apache.conf /usr/local/apache2/conf/tnsql.apache.conf

RUN echo "Include /usr/local/apache2/conf/tnsql.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

#USER www-data
