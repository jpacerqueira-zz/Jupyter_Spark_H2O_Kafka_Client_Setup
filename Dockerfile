FROM ubuntu:18.04

# ADD setup-env-tools.sh /usr/local/bin/setup-env-tools.sh
# RUN chmod 777 /usr/local/bin/setup-env-tools.sh

RUN apt-get update && apt-get install -y apt-utils \
    sudo
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
RUN apt-get update
RUN apt-get upgrade
RUN apt-get update && apt-get install -y curl \
    wget \
    zip \
    unzip \
    tar \
    bzip2 

RUN apt-get update && apt-get install -y \
    python-qt4 \
    python-pyside \
    python-pip \
    python3-pip \
    python3-pyqt5 \
    vim \
    software-properties-common

ADD library_tools/*.sh /home/notebookuser/

RUN chmod 777 /home/notebookuser/*.sh

CMD mkdir -p /home/notebookuser/java/

ADD java_tools/*.* /home/notebookuser/java/

RUN chmod 777 /home/notebookuser/java/*.sh

CMD mkdir -p  /home/notebookuser/notebooks/data/

ADD notebooks/*.* /home/notebookuser/notebooks/

ADD notebooks/data/*.*  /home/notebookuser/notebooks/data/ 

ADD setup-env-tools.sh /home/notebookuser/setup-env-tools.sh

RUN chmod 777 /home/notebookuser/*.sh

RUN chown notebookuser:notebookuser -R /home/notebookuser

ADD library_tools/start-jupyter.sh /home/notebookuser

ADD library_tools/stop-jupyter.sh /home/notebookuser

ADD library_tools/install-pyarrow.sh /home/notebookuser

USER notebookuser

CMD export HOME=/home/notebookuser

# CMD ./usr/local/bin/setup-env-tools.sh ; sleep infinity
# CMD cd $HOME ; ./setup-env-tools.sh ; sleep infinity

CMD  export HOME=/home/notebookuser ; cd $HOME ; \
     bash -x $HOME/setup-env-tools.sh ; \
     sleep 720 ; \
     sudo chown notebookuser:notebookuser -R /home/notebookuser ; \
     sudo cp /home/notebookuser/library_tools/start-jupyter.sh $HOME ; \
     sudo cp /home/notebookuser/library_tools/stop-jupyter.sh $HOME ; \
     sudo cp /home/notebookuser/library_tools/stop-jupyter.sh $HOME ; \
     bash -x /home/notebookuser/library_tools/install-pyarrow.sh ; \
     bash -x $HOME/start-jupyter.sh ; \
     sleep infinity
#
