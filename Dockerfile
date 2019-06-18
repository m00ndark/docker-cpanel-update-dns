FROM python:alpine
MAINTAINER Mattias Wijkstrom (mattias.wijkstrom@gmail.com)

ENV USERNAME="" \
    PASSWORD="" \
    CPANEL_HOST="freedns.oderland.com" \
    CPANEL_PORT="2083"

ADD internal_build.sh .
RUN ./internal_build.sh
WORKDIR /opt/cpanel-update-dns
ADD entrypoint.sh .

CMD ./entrypoint.sh
