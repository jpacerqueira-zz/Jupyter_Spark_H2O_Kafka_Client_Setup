FROM ubuntu:18.04

ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh

RUN chmod 777 /usr/local/bin/setup-env-tools.sh

RUN useradd --user-group --system --create-home --no-log-init notebookuser

ADD library_tools/*.sh /home/notebookuser/

RUN chmod 777 /home/notebookuser/*.sh

CMD mkdir -p /home/notebookuser/java/

ADD java_tools/*.* /home/notebookuser/java/

RUN chmod 777 /home/notebookuser/java/*.sh

CMD mkdir -p  /home/notebookuser/notebooks/data/

ADD notebooks/*.* /home/notebookuser/notebooks/

ADD notebooks/data/* /home/notebookuser/notebooks/data/

ADD library_tools/start-jupyter.sh /home/notebookuser

ADD library_tools/stop-jupyter.sh /home/notebookuser

ADD library_tools/install-pyarrow.sh /home/notebookuser

ADD setup-env-tools.sh /home/notebookuser/setup-env-tools.sh

RUN chmod 777 /home/notebookuser/*.sh

RUN chown notebookuser:notebookuser -R /home/notebookuser

USER notebookuser

CMD export HOME=/home/notebookuser

ADD library_tools/start-jupyter.sh /home/notebookuser/

ADD library_tools/stop-jupyter.sh /home/notebookuser/

ADD library_tools/install-pyarrow.sh /home/notebookuser/

# CMD ./usr/local/bin/setup-env-tools.sh ; sleep infinity

# CMD cd $HOME ; ./setup-env-tools.sh ; sleep infinity

CMD cd $HOME ; bash -x $HOME/setup-env-tools.sh ; sleep infinity