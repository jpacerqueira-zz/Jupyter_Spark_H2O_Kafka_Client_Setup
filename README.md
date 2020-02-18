# Jupyter_Spark_H2O_Kafka_Client_Setup

   An local setup of Jupyter with Java8 Spark.2.4.3 H2O.ai SparklingWater Kafka and Jupyter Notebooks. 
   Ideal for environment WSL (Windows Subsystem Linux) and Ubunto 18 LTS

   Setup Option 1 :
   
    - Run using Docker with repository 
      -- https://hub.docker.com/r/jpacerqueira83/datascience-fullstack-vm1
        
    - Run Docker with iptable port opening process
        - :~ mac-jpac$ docker run  -it -p 9003:9003 -p 54321:54321 --cap-add=NET_ADMIN  jpacerqueira83/datascience-fullstack-vm1:latest
        
    - Run Docker exec to do a Jupyter start after aprox. 8 minutes
        - :~ mac-jpac$ docker exec -it jpacerqueira83/datascience-fullstack-vm1:latest /bin/bash -c "bash -x $HOME/start-jupyter.sh"

   Setup Option 2 :

    -  Run Setup in Ubunto 18.4 LTS or Windows WSL Ubunto 18.4 LTS
    - Consume package 
        - :~ wsl-jpac$  cd ~ ; git clone https://github.com/jpacerqueira/Jupyter_Spark_H2O_Kafka_Client_Setup.git
    - Execute installation
        - :~ wsl-jpac$  cd ~ ; cp ~/Jupyter_Spark_H2O_Kafka_Client_Setup/library_tools/*.sh . ; bash -x anaconda_setup.sh


   Issues and Workarrounds 3 :

    - It is recommended to use JAVA8(Oracle) and not OpenJDK8
      -- Installation : https://www.linuxuprising.com/2019/02/install-any-oracle-java-jdk-version-in.html
      -- This installation resolve my issue here : https://github.com/jupyter/jupyter/issues/248    
    
    - Mount Additional driver in Docker Containers
      -- Your local container may require to mount large files like Oracle JAVA installer

   License "use as it is! Fix it, improve it, share it back!"

#
