#!/bin/bash

NEW_VER=$1

for APP in `ls -1 helm-chart-sources`
do
    VER_OLD=`cat helm-chart-sources/$APP/Chart.yaml | grep version: | awk '{print $2}'`
    sed "s/$VER_OLD/$NEW_VER/" helm-chart-sources/$APP/Chart.yaml > helm-chart-sources/$APP/Chart.yaml.tmp
    mv helm-chart-sources/$APP/Chart.yaml.tmp helm-chart-sources/$APP/Chart.yaml
done
