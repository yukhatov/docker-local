FROM php:7.2-apache

COPY public/ /var/www/html/

EXPOSE 80
RUN a2enmod rewrite && a2enmod headers && service apache2 restart

#
## Upgrade everything to latest version + add useful tools
#RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sendmail libpng-dev apt-utils vim \
#    less locate zlib1g-dev net-tools libmcrypt-dev nmap inetutils-ping dnsutils traceroute \
#    libc-client-dev libkrb5-dev apt-utils && rm -r /var/lib/apt/lists/*
#
#RUN docker-php-ext-install gd mbstring calendar mysqli pdo_mysql
#RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && docker-php-ext-install imap
#
#RUN pecl install xdebug && docker-php-ext-enable xdebug
#RUN echo '[Xdebug]' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo "xdebug.remote_host = 192.168.65.2" >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.remote_autostart = 0' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.remote_log = /tmp/xdebug' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.profiler_enable = 0' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.profiler_enable_trigger = 1' >> /usr/local/etc/php/conf.d/php.ini && \
#        echo 'xdebug.profiler_output_dir = /tmp/xdebug-profile' >> /usr/local/etc/php/conf.d/php.ini
#
#COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
#
#ENV APACHE_DOCUMENT_ROOT /var/www/html
#
##RUN sed -ri -e "s@/var/www/html@${APACHE_DOCUMENT_ROOT}@g" /etc/apache2/sites-available/*.conf
##RUN sed -ri -e "s@/var/www/@${APACHE_DOCUMENT_ROOT}@g" /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf


