* file 구조
capture do ./01_Setup.do

import delimited ${raw}/WA_Fn-UseC_-HR-Employee-Attrition.csv, clear

rename v1 index

* 연령별
hist age, freq


scatter dailyrate age, by(attrition)
codebook attrition

encode attrition, gen(attrition_cd)
gen attrition_yn = attrition == "Yes"

logit attrition_yn

ttest age, by(attrition)
