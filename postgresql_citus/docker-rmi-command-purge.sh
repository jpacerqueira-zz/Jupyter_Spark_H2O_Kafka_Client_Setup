 docker rmi $( docker image ls | awk -F' ' '{ print $3 }') | docker image ls
