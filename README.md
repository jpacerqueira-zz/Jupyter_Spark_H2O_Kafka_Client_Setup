# Jupyter_Spark_H2O_Kafka_Client_Setup

   An local setup of Jupyter with Java8 Spark.2.4.3 H2O.ai SparklingWater Kafka and Jupyter Notebooks. 
   Ideal for environment WSL (Windows Subsystem Linux) and Ubunto 18 LTS

   Setup Option 1 :
   
    1.- Run using DockerHub with Dockerfile
    2.- Control execution editing file setup-env-tools.sh that executes installation of tools in $HOME

   Setup Option 2 :

    1.-  Run Setup in Ubunto 18.4 LTS or Windows WSL Ubunto 18.4 LTS
    2.-  cd ~ ; git clone https://github.com/jpacerqueira/Jupyter_Spark_H2O_Kafka_Client_Setup.git
    3.-  cd ~ ; cp ~/Jupyter_Spark_H2O_Kafka_Client_Setup/library_tools/*.sh . ; bash -x anaconda_setup.sh


   Issue and Workarround:


    3.- It is recommended to use JAVA8(Oracle) and not OpenJDK8
      - Installation : https://www.linuxuprising.com/2019/02/install-any-oracle-java-jdk-version-in.html
      - This installation resolve my issue here : https://github.com/jupyter/jupyter/issues/248    

   License "use as it is! Fix it, improve it, share it back!"
