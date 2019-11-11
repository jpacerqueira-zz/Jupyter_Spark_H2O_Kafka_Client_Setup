#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('apt-get install wget')
get_ipython().system('apt-get install tar')
get_ipython().system('apt-get install openjdk-8-jdk-headless -qq > /dev/null')
get_ipython().system('wget -q https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz')
get_ipython().system('tar xf spark-2.4.4-bin-hadoop2.7.tgz')


# In[2]:


get_ipython().system('pip install h2o')


# In[4]:


get_ipython().system('pip install findspark')


# In[5]:


get_ipython().system('pip install pyarrow')


# In[6]:


get_ipython().system('pip install pandas')


# In[7]:


get_ipython().system('pip install numpy')


# In[15]:


import subprocess 
cmd0 = "cat $HOME/.bashrc > mylog.txt "
returned_value0 = subprocess.call(cmd0, shell=True) 
print("returned value:", returned_value0)


# In[16]:


import subprocess 
cmd1 = "echo 'PATH=$HOME/spark-2.4.4-bin-hadoop2.7/bin:$PATH' >> $HOME/.bashrc "
returned_value1 = subprocess.call(cmd1, shell=True) 
print("returned value1:", returned_value1)


# In[18]:


import subprocess
cmd2 = "echo 'JAVA_HOME=/usr/lib/jvm/openjdk1.8.0_222' >> $HOME/.bashrc "
returned_value2 = subprocess.call(cmd2, shell=True) 
print("returned value2:", returned_value2)


# In[19]:


import subprocess
cmd3 = " echo 'SPARK_HOME=$HOME/spark/spark-2.4.4-bin-hadoop2.7'  >> $HOME/.bashrc "
returned_value3 = subprocess.call(cmd3, shell=True) 
print("returned value3:", returned_value3)


# In[21]:


import subprocess
cmd4 = " echo 'HADOOP_HOME=$SPARK_HOME'  >> $HOME/.bashrc "
returned_value4 = subprocess.call(cmd4, shell=True) 
print("returned value4:", returned_value4)


# In[22]:


import subprocess
cmd5 = " echo 'JAVA_HOME=/usr/lib/jvm/jdk1.8.0_222'  >> $HOME/.bashrc "
returned_value5 = subprocess.call(cmd5, shell=True) 
print("returned value5:", returned_value5)


# In[29]:


import subprocess
cmd6 = " source $HOME/.bashrc | echo done" 
returned_value6 = subprocess.call(cmd6, shell=True) 
print("returned value6:", returned_value6)


# In[30]:


import subprocess 
cmd0 = "cat $HOME/.bashrc > mylog.txt "
returned_value0 = subprocess.call(cmd0, shell=True) 
print("returned value:", returned_value0)


# In[31]:


import h2o
h2o.init()


# In[32]:


exit()

