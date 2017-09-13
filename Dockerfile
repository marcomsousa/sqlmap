FROM python:2.7-alpine
MAINTAINER Marco Sousa <marcomsousa+docker @ gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apk update && apk upgrade && \
    apk add --no-cache bash git

RUN git clone https://github.com/sqlmapproject/sqlmap.git \
    && cd sqlmap

WORKDIR /sqlmap
VOLUME /data

CMD ["—h"]
ENTRYPOINT ["./sqlmap.py"]
