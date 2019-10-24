FROM ubuntu:18.04

# ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh
# RUN chmod 777 /usr/local/bin/setup-env-tools.sh

RUN apt-get update
RUN apt-get install sudo
RUN \
    groupadd -g 999 notebookuser && useradd -u 999 -g notebookuser -G sudo -m -s /bin/bash notebookuser && \
    sed -i /etc/sudoers -re 's/^%sudo.*/%sudo ALL=(ALL:ALL) NOPASSWD: ALL/g' && \
    sed -i /etc/sudoers -re 's/^root.*/root ALL=(ALL:ALL) NOPASSWD: ALL/g' && \
    sed -i /etc/sudoers -re 's/^#includedir.*/## **Removed the include directive** ##"/g' && \
    echo "notebookuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "Customized the sudoers file for passwordless access to the notebookuser user!" && \
    echo "notebookuser user:";  su - notebookuser -c id
# RUN useradd --user-group --system --create-home --no-log-init notebookuser

# Refreshing the repositories
RUN apt update
RUN apt upgrade
RUN apt-get install curl
RUN apt-get install wget
RUN apt-get install zip
RUN apt-get install unzip
RUN apt-get install tar
RUN apt-get install python-pip
RUN apt-get install python2.7
RUN apt-get install python3-pip
RUN apt-get install python3

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

# Refreshing the repositories
#RUN sudo apt update
#RUN sudo apt upgrade
#RUN sudo apt-get install zip
#RUN sudo apt-get install unzip
#RUN sudo apt-get install tar

CMD export HOME=/home/notebookuser

ADD library_tools/start-jupyter.sh /home/notebookuser/

ADD library_tools/stop-jupyter.sh /home/notebookuser/

ADD library_tools/install-pyarrow.sh /home/notebookuser/

# CMD ./usr/local/bin/setup-env-tools.sh ; sleep infinity
# CMD cd $HOME ; ./setup-env-tools.sh ; sleep infinity

CMD cd $HOME ; bash -x $HOME/setup-env-tools.sh ; sleep infinity
#
