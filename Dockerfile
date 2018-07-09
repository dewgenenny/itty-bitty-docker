FROM httpd:2.4
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/alcor/itty-bitty.git
RUN rm -Rf htdocs
RUN mv ./itty-bitty /usr/local/apache2/htdocs
COPY ./.htaccess /usr/local/apache2/htdocs
RUN chown -R www-data:www-data /usr/local/apache2/htdocs
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
