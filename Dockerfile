FROM alpine:3.5

RUN apk update
RUN apk add py-pip
RUN apk add zip
RUN apk add ca-certificates
RUN apk add dos2unix --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/

RUN pip install --upgrade pip

RUN mkdir /working

WORKDIR /working

ADD src/pip-and-zip.sh /bin/pip-and-zip.sh

RUN chmod +x /bin/pip-and-zip.sh

CMD . /bin/pip-and-zip.sh