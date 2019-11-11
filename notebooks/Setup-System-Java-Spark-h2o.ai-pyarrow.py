#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('apt-get install wget')
get_ipython().system('apt-get install tar')
get_ipython().system('apt-get install openjdk-8-jdk-headless -qq > /dev/null')
get_ipython().system('wget -q https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz')
get_ipython().system('tar xf spark-2.4.4-bin-hadoop2.7.tgz')


# In[3]:


get_ipython().system('pip install h2o')


# In[4]:


get_ipython().system('pip install findspark')


# In[5]:


get_ipython().system('pip install pyarrow')


# In[6]:


get_ipython().system('pip install pandas')


# In[7]:


get_ipython().system('pip install numpy')


# In[10]:


import subprocess 
cmd0 = "cat $HOME/.bashrc > mylog.txt "
returned_value0 = subprocess.call(cmd0, shell=True) 
print("returned value:", returned_value0)


# In[11]:


import subprocess 
cmd1 = "echo 'export PATH=$HOME/notebooks_h2o/spark-2.4.4-bin-hadoop2.7/bin:$PATH' >> $HOME/.bashrc "
returned_value1 = subprocess.call(cmd1, shell=True) 
print("returned value1:", returned_value1)


# In[12]:


import subprocess
cmd2 = "echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> $HOME/.bashrc "
returned_value2 = subprocess.call(cmd2, shell=True) 
print("returned value2:", returned_value2)


# In[13]:


import subprocess
cmd3 = " echo 'export SPARK_HOME=$HOME/notebooks_h2o/spark-2.4.4-bin-hadoop2.7'  >> $HOME/.bashrc "
returned_value3 = subprocess.call(cmd3, shell=True) 
print("returned value3:", returned_value3)


# In[14]:


import subprocess
cmd4 = " echo 'export HADOOP_HOME=$SPARK_HOME'  >> $HOME/.bashrc "
returned_value4 = subprocess.call(cmd4, shell=True) 
print("returned value4:", returned_value4)


# In[15]:


import subprocess
cmd5 = "echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> $HOME/.bashrc "
returned_value5 = subprocess.call(cmd5, shell=True) 
print("returned value5:", returned_value5)


# In[16]:


import subprocess
cmd6 = " echo 'export PYSPARK_DRIVER_PYTHON=jupyter'  >> $HOME/.bashrc "
returned_value6 = subprocess.call(cmd6, shell=True) 
print("returned value5:", returned_value6)


# In[17]:


import subprocess
cmd7 = " echo 'export PYSPARK_DRIVER_PYTHON_OPTS=notebook'  >> $HOME/.bashrc "
returned_value7 = subprocess.call(cmd7, shell=True) 
print("returned value7:", returned_value7)


# In[18]:


import subprocess
cmd8 = " echo 'export PYSPARK_PYTHON=/usr/bin/python3'  >> $HOME/.bashrc "
returned_value8 = subprocess.call(cmd8, shell=True) 
print("returned value8:", returned_value8)


# In[19]:


import subprocess
cmd9 = " echo 'export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH'  >> $HOME/.bashrc "
returned_value9 = subprocess.call(cmd9, shell=True) 
print("returned value9:", returned_value9)


# In[20]:


import subprocess
cmd10 = " echo 'export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH'  >> $HOME/.bashrc "
returned_value10 = subprocess.call(cmd10, shell=True) 
print("returned value10:", returned_value10)


# In[21]:


import subprocess
cmd11 = " echo 'export SPARK_LOCAL_IP=0.0.0.0'  >> $HOME/.bashrc "
returned_value11 = subprocess.call(cmd11, shell=True) 
print("returned value11:", returned_value11)


# In[22]:


import subprocess
cmd12 = " echo 'export PACKAGES=\"io.delta:delta-core_2.11:0.3.0\"'  >> $HOME/.bashrc "
returned_value12 = subprocess.call(cmd12, shell=True) 
print("returned value12:", returned_value12)


# In[23]:


import subprocess
cmd13 = " echo 'export PYSPARK_SUBMIT_ARGS=\"--packages ${PACKAGES}  pyspark-shell\"'  >> $HOME/.bashrc "
returned_value13 = subprocess.call(cmd13, shell=True) 
print("returned value13:", returned_value13)


# In[24]:


import subprocess
cmds1 = " source $HOME/.bashrc | echo done" 
returned_value_s1 = subprocess.call(cmds1, shell=True) 
print("returned value_s1:", returned_value_s1)


# In[25]:


import subprocess 
cmd0 = "cat $HOME/.bashrc > mylog.txt "
returned_value0 = subprocess.call(cmd0, shell=True) 
print("returned value0:", returned_value0)


# In[26]:


import h2o
h2o.init()


# In[ ]:


exit()

