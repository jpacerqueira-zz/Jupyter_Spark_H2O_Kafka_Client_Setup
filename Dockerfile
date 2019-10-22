FROM ubuntu:14.04

ADD shell.sh /usr/local/bin/shell.sh

RUN chmod 777 /usr/local/bin/shell.sh

CMD /usr/local/bin/shell.sh ; sleep infinity
