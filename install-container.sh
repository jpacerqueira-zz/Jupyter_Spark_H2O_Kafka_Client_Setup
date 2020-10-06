#!/usr/bin/env bash
#
DOCKERLS=$(docker ps | grep lost_saturn | awk -F' ' '{ print $15 }')
echo "$DOCKERLS"
HERES=$(pwd)
FILES=Setup-System-Java-Spark-h2o.ai-pyarrow.ipynb # ipynb in test to load addicional libraries
DEST_FOLDER=/home/notebookuser/notebooks/
#
if [[ $DOCKERLS != "lost_saturn" ]] && [[ -f "$HERES/notebooks/$FILES" ]]; then
   echo "setup ; option1"
   docker run  -itd -p 9003:9003   --cap-add=NET_ADMIN --name lost_saturn --mount type=bind,source="$(pwd)"/notebooks,target=${DEST_FOLDER}  jpacerqueira83/jupyter_satascience:latest
   echo "  wait 12 min  - lost_saturn - full setup in progress - STEP1"
   sleep 720
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x start-jupyter.sh ; bash -x stop-jupyter.sh ; sleep 4 ; echo 'setup1: smoke test' "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x install-jupyter-support-packs.sh ; sleep 4 ; echo 'setup2 : additional libraries instalation' "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x start-jupyter.sh ; sleep 4 ; cat notebooks/jupyter.log ; echo 'setup : completed - jupyter token above';  sleep infinity"
elif [[ $DOCKERLS != "lost_saturn" ]]; then
   echo "setup ; option2"
   docker run  -itd -p 9003:9003   --cap-add=NET_ADMIN --name lost_saturn jpacerqueira83/jupyter_satascience:latest
   echo "  wait 12 min  - lost_saturn - full setup in progress - STEP1"
   sleep 720
   ARGS1="nbconvert --to notebook --execute --allow-errors --ExecutePreporcessor.timeout=480 notebooks/$FILES "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x ~/anaconda3/bin/jupyter $ARGS1 "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x start-jupyter.sh ; bash -x stop-jupyter.sh ; sleep 4 ; echo 'setup1: smoke test' "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x install-jupyter-support-packs.sh ; sleep 4 ; echo 'setup2 : additional libraries instalation' "
   docker exec -it lost_saturn /bin/bash -c "cd ; source .bashrc ; bash -x start-jupyter.sh ; sleep 4 ; cat notebooks/jupyter.log ; echo 'setup : completed - jupyter token above';  sleep infinity"
else
   echo "Setup not Possible! consult https://github.com/jpacerqueira"
fi
#
