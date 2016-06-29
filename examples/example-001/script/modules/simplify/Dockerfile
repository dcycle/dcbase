FROM php:7

COPY docker-resources/simplify /simplify
COPY . /raw
RUN mkdir -p /simplified
RUN php /simplify/simplify.php
RUN ls -lah /simplified/
