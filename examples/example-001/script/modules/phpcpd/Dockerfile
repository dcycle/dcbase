FROM debian

RUN apt-get -y update
RUN apt-get -y install php5-common php5-cli
RUN apt-get -y install curl
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN composer global require "sebastian/phpcpd=*"
ENV PATH $PATH:/root/.composer/vendor/bin

COPY . /repo
# /metrics does not yet exist; it will be linked to a local file during the
# run phase.
RUN mkdir -p /metrics/raw/phpcpd
RUN phpcpd --log-pmd=/metrics/raw/phpcpd/phpcpd.xml --min-lines=1 --min-tokens=1 /repo || true
