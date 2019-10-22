FROM ubuntu:14.04

ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh

RUN chmod 777 /usr/local/bin/setup-env-tools.sh

CMD /usr/local/bin/setup-env-tools.sh ; sleep infinity
