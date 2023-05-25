ARG IMG
FROM ${IMG}

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      libmemcached-dev \
      libz-dev \
      libpq-dev \
      libjpeg-dev \
      libpng-dev \
      libfreetype6-dev \
      libssl-dev \
      libmcrypt-dev \
      zip \
      unzip \
      build-essential \
      libaio1 \
      libzip-dev \
      libxml2-dev \
    && apt-get clean

COPY instantclient-basiclite-linux.x64-18.5.0.0.0dbru.zip .
COPY instantclient-sdk-linux.x64-18.5.0.0.0dbru.zip .

RUN unzip instantclient-basiclite-linux.x64-18.5.0.0.0dbru.zip -d /usr/lib/oracle/ \
    && rm instantclient-basiclite-linux.x64-18.5.0.0.0dbru.zip \
    && unzip instantclient-sdk-linux.x64-18.5.0.0.0dbru.zip -d /usr/lib/oracle/ \
    && rm instantclient-sdk-linux.x64-18.5.0.0.0dbru.zip \
    && echo /usr/lib/oracle/instantclient_18_5 > /etc/ld.so.conf.d/oracle-instantclient.conf \
    && ldconfig

ENV LD_LIBRARY_PATH /usr/lib/oracle/instantclient_18_5

# Install PHP extensions: Laravel needs also zip, mysqli and bcmath which
# are not included in default image. Also install our compiled oci8 extensions.
RUN docker-php-ext-configure oci8 --with-oci8=instantclient,/usr/lib/oracle/instantclient_18_5 \
    && docker-php-ext-install -j$(nproc) oci8

EXPOSE 80 443 9000
