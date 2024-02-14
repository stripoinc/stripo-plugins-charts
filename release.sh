#!/bin/bash


echo "helm lint"
helm lint helm-chart-sources/*

echo "helm package"
helm package helm-chart-sources/* 

echo "helm index"
#helm repo index --url https://stripoinc.github.io/stripo-plugins-charts/ .
helm repo index --url https://raw.githubusercontent.com/stripoinc/stripo-plugins-charts/main/ .
