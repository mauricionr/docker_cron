FROM alpine

ENV PYTHONUNBUFFERED=1
RUN apk add -Y --update --no-cache python3 ruby && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

ADD crontab.txt /crontab.txt
ADD scripts /scripts
COPY script.log /var/log
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh /scripts/*.sh /scripts/*.py /scripts/*.rb
RUN /usr/bin/crontab /crontab.txt

CMD ["/entry.sh"]