#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('apt-get install wget')
get_ipython().system('apt-get install tar')
get_ipython().system('apt-get install openjdk-8-jdk-headless -qq > /dev/null')
get_ipython().system('wget -q https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz')
get_ipython().system('tar xf spark-2.4.4-bin-hadoop2.7.tgz')


# In[3]:


pip install h2o


# In[4]:


pip install findspark


# In[5]:


import h2o
h2o.init()


# In[6]:


pip install pyarrow


# In[7]:


pip install pandas


# In[8]:


pip install numpy


# In[9]:


import subprocess 
cmd0 = "cat $HOME/.bashrc "
returned_value0 = subprocess.call(cmd0, shell=True) 
print("returned value:", returned_value0)


# In[12]:


import subprocess 
cmd1 = "echo 'PATH=$HOME/spark-2.4.4-bin-hadoop2.7/bin:$PATH' >> ${HOME}/.bashrc ;  echo 'JAVA_HOME=/usr/lib/jvm/openjdk1.8.0_222' >> $HOME./bashrc ;  echo 'SPARK_HOME=$HOME/spark/spark-2.4.4-bin-hadoop2.7' >> $HOME./bashrc ;  echo 'HADOOP_HOME=$SPARK_HOME' >> $HOME/.bashrc ;  echo 'JAVA_HOME=/usr/lib/jvm/jdk1.8.0_222' >> $HOME/.bashrc ;  source $HOME/.bashrc " 
returned_value1 = subprocess.call(cmd1, shell=True) 
print("returned value:", returned_value1)


# In[13]:


exit()


# In[ ]:




