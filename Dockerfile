FROM ubuntu:18.04

ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh

RUN chmod 777 /usr/local/bin/setup-env-tools.sh

RUN cp -rf library_tools/*.sh $HOME ;

CMD /usr/local/bin/setup-env-tools.sh ; sleep infinity
