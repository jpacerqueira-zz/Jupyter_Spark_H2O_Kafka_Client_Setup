#!/usr/bin/env bash
#
FILEAN=$1
#
HOMEY=/home/notebookuser
source $HOMEY/.profile
cd $HOMEY/notebooks/covid19/heatmaps
#
sed -i 's/\n //g' $FILEAN
sed -i 's/\n //g' $FILEAN
sed -i 's/\n //g' $FILEAN
sed -i 's/\n //g' $FILEAN
#
sed -i 's/   / /g' $FILEAN
sed -i 's/   / /g' $FILEAN
sed -i 's/   / /g' $FILEAN
sed -i 's/   / /g' $FILEAN
#
sed -i 's/  / /g' $FILEAN
sed -i 's/  / /g' $FILEAN
sed -i 's/  / /g' $FILEAN
#
#