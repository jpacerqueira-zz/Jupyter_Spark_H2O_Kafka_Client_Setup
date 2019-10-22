FROM ubuntu:18.04

ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh

RUN chmod 777 /usr/local/bin/setup-env-tools.sh

RUN useradd --user-group --system --create-home --no-log-init notebookuser

USER notebookuser

ADD library_tools/*.sh /home/notebookuser/

RUN chmod 777 /home/notebookuser/*.sh 

CMD /usr/local/bin/setup-env-tools.sh ; sleep infinity

CMD mkdir notebooks

ADD notebooks/*.* /home/notebookuser/notebooks/

CMD mkdir notebooks/data

ADD notebooks/data/* /home/notebookuser/notebooks/data/
