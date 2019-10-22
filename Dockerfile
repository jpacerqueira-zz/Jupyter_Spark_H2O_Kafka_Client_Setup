FROM ubuntu:18.04

ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh

RUN chmod 777 /usr/local/bin/setup-env-tools.sh

ADD library_tools/*.sh $HOME

RUN chmod 777 $HHOME/*.sh 

CMD /usr/local/bin/setup-env-tools.sh ; sleep infinity
