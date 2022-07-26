FROM albreis/apache
WORKDIR .
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY . /usr/local/apache2/htdocs/
RUN ls /usr/local/apache2/htdocs/