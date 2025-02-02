* file 구조
clear all

* Data 경로
global project C:/Users/kwng/OneDrive/Projects/Practice_Stata

global raw ${project}/data/raw
global interim ${project}/data/interim
global processed ${project}/data/processed

global figures ${project}/results/figures
global tables ${project}/results/tables

di "${project}"

* ssc install project
