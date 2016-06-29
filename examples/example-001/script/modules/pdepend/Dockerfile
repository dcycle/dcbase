FROM debian

RUN apt-get -y update
RUN apt-get -y install php5-common php5-cli
RUN apt-get -y install curl
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN composer global require pdepend/pdepend
ENV PATH $PATH:/root/.composer/vendor/bin

COPY . /repo
# /metrics does not yet exist; it will be linked to a local file during the
# run phase.
RUN mkdir -p /metrics/raw/pdepend
RUN cd /repo && pdepend --dependency-xml=/metrics/raw/pdepend/dependency-xml.xml --jdepend-chart=/metrics/raw/pdepend/jdepend-chart.xml --jdepend-xml=/metrics/raw/pdepend/jdepend-xml.xml --overview-pyramid=/metrics/raw/pdepend/overview-pyramid.xml --summary-xml=/metrics/raw/pdepend/summary-xml.xml .
