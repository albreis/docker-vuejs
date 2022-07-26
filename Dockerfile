FROM albreis/apache
WORKDIR .
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY . /usr/local/apache2/htdocs/
RUN echo "fs.inotify.max_user_instances=524288" >> /etc/sysctl.conf
RUN echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
RUN echo "fs.inotify.max_queued_events=524288" >> /etc/sysctl.conf
