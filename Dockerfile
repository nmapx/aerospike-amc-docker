FROM alpine:3.10

LABEL maintainer="mt@ngen.pl"

ENV VERSION 4.0.25

WORKDIR /
COPY . .

RUN apk --update --no-cache add -u \
        bash && \
    wget -O /tmp/amc.tar.gz https://www.aerospike.com/artifacts/aerospike-amc-community/$VERSION/aerospike-amc-community-$VERSION-linux.tar.gz && \
    tar -xvf /tmp/amc.tar.gz && \
    rm -rf /var/cache/apk/* \
        /tmp/*

EXPOSE 8081

ENTRYPOINT ["/entrypoint.sh"]
CMD ["amc"]
