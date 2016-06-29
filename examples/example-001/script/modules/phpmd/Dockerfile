FROM debian

RUN apt-get -y update
RUN apt-get -y install php5-common php5-cli
RUN apt-get -y install curl
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN composer global require phpmd/phpmd
RUN find . -name 'phpmd'
ENV PATH $PATH:/root/.composer/vendor/bin

COPY . /repo
# /metrics does not yet exist; it will be linked to a local file during the
# run phase.
RUN mkdir -p /metrics/raw/phpmd
RUN find / -name 'PHPMD'
RUN cd /repo && phpmd . xml cleancode > /metrics/raw/phpmd/cleancode.xml || true
# RUN cd /repo && phpmd . xml codesize > /metrics/raw/phpmd/codesize.xml || true
# RUN cd /repo && phpmd . xml controversial > /metrics/raw/phpmd/controversial.xml || true
# RUN cd /repo && phpmd . xml design > /metrics/raw/phpmd/design.xml || true
# RUN cd /repo && phpmd . xml naming > /metrics/raw/phpmd/naming.xml || true
# RUN cd /repo && phpmd . xml unusedcode > /metrics/raw/phpmd/unusedcode.xml || true
