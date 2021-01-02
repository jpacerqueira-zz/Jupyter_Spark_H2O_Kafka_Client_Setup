#!/usr/bin/env bash
#
HOME=/home/notebookuser
source $HOME/.profile
cd $HOME/crontab
DATENB=$(date +'%Y-%m-%d')
# 14DayForecast
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/MY_COVID19-Prediction_00MMYYYY-v14.ipynb  \
       --output $HOME/notebooks/covid19/MY_COVID19-Prediction_${DATENB}-14dayForecast-output-candidate.ipynb > crontab-run-$DATENB.log
mv $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred14Days.html $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred14Days-displayFuelBigData.html      
bash -x $HOME/notebooks/covid19/heatmaps/sed-format-fit-website.sh $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred14Days-displayFuelBigData.html
sleep 1
#rm -rf  /tmp/*
# 21DayForecast
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/MY_COVID19-Prediction_00MMYYYY.ipynb  \
       --output $HOME/notebooks/covid19/MY_COVID19-Prediction_${DATENB}-output-candidate.ipynb >> crontab-run-$DATENB.log
mv $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred21Days.html $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred21Days-displayFuelBigData.html
bash -x $HOME/notebooks/covid19/heatmaps/sed-format-fit-website.sh $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred21Days-displayFuelBigData.html
sleep 1
#rm -rf  /tmp/*
# 42DayForecast
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/MY_COVID19-Prediction_00MMYYYY-v42.ipynb  \
       --output $HOME/notebooks/covid19/MY_COVID19-Prediction_${DATENB}-42dayForecast-output-candidate.ipynb >> crontab-run-$DATENB.log
mv $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred42Days.html $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred42Days-displayFuelBigData.html
bash -x $HOME/notebooks/covid19/heatmaps/sed-format-fit-website.sh $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred42Days-displayFuelBigData.html
sleep 1
#rm -rf  /tmp/*
# 63DayForecast
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/MY_COVID19-Prediction_00MMYYYY-v63.ipynb  \
       --output $HOME/notebooks/covid19/MY_COVID19-Prediction_${DATENB}-63dayForecast-output-candidate.ipynb >> crontab-run-$DATENB.log
mv $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred63Days.html $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred63Days-displayFuelBigData.html
bash -x $HOME/notebooks/covid19/heatmaps/sed-format-fit-website.sh $HOME/notebooks/covid19/heatmaps/Heatmap_Folium-Regional-${DATENB}-pred63Days-displayFuelBigData.html
sleep 1
#
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/MY_COVID19-Prediction_00MMYYYY-v1data.ipynb  \
       --output $HOME/notebooks/covid19/MY_COVID19-Prediction_${DATENB}-1dayForecast-data-output.ipynb >> crontab-run-$DATENB.log
#
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=3600 \
       $HOME/notebooks/covid19/Daily-Covid19-Analysis-Spark-SQL-Delta.Lake-version1.0.ipynb \
       --output $HOME/notebooks/covid19/Daily-Covid19-Analysis-Spark-SQL-Delta.Lake-version1.0_${DATENB}.ipynb >> crontab-run-$DATENB.log
#
rm -rf  /tmp/*
#