
* Title: Mental Health and Pregnancy Loss in and internet use Bangladesh





clear all
set more off
set maxvar 32767
* Load the BDHS IR dataset (replace with actual path)
use "D:\Research\BDHS Research\Reproductive MH and Media\MH with pregnancy\Data\mental_health_clean.dta", clear


/*
/*
Key Confounders to Consider in Analysis:

 Sociodemographic Variables
- Age (v012): Both mental health and pregnancy loss risks vary with age.
- Residence (urban/rural) (v025): Access to care, stigma, risk exposures differ.
- Religion (v130): Social norms and stigma vary by religion.
- Education (woman: v106, husband: v701): Affects health behaviors and resilience.
- Wealth Index (v190): Socioeconomic status influences outcomes.
- Employment Status (v714): Economic independence affects mental well-being.
- Media Exposure (v158, v159, v160, v151): Affects mental health awareness and coping.

 Reproductive/Obstetric Variables
- Number of Children (parity) (v201, v218): Impacts risk of pregnancy loss and stress.
- History of Stillbirth (variable TBD): Associated with depressive/anxiety symptoms.
- ANC Visits (m14): Indicates healthcare access affecting mental health.
- Age at First Birth (v212 or related): Early childbearing risk factor.

 Psychosocial and Behavioral Variables
- Intimate Partner Violence (IPV) (d105, d106, etc.): Strong link to depression/anxiety.
- Decision-Making Autonomy (v743a–c): Lower autonomy linked to worse MH.
- Perceived Social Support (variable TBD): Protective factor.
- Substance Use (if available): Linked to MH and pregnancy loss.

 Common BDHS Variables for Reference
Age: v012
Residence: v025
Religion: v130
Wealth: v190
Education: v106 (woman), v701 (husband)
Employment: v714
Media Exposure: v158, v159, v160, v151
Parity: v201, v218
IPV: d105, d106, etc.
ANC Visits: m14
Decision Making: v743a–c
Autonomy: v739

*/

*/


******************************************
* Outcome
rename phq9_cat depression_cat
rename gad7_cat anxiety_cat


label variable depression_cat "Depression Category (PHQ-9)"
label variable anxiety_cat "Anxiety Category (GAD-7)"



tab depression_cat
tab anxiety_cat

*******************************************

*******************************************
* exposures 1

*To categorize v245 (pregnancy losses)
gen preg_loss_cat = .
replace preg_loss_cat = 0 if v245 == 0
replace preg_loss_cat = 1 if v245 == 1
replace preg_loss_cat = 2 if v245 >= 2

label define preg_loss_lbl 0 "None" 1 "One loss" 2 "Two or more losses"
label values preg_loss_cat preg_loss_lbl
tab preg_loss_cat

******************************************
tab v171a
* exposure 2
***************************************************************************
* Media - Internet use binary coding
gen internet_use = .
replace internet_use = 0 if inlist(v171a, 0, 2)  // never or yes, before last 12 months = No
replace internet_use = 1 if v171a == 1            // yes  last 12 months = Yes

label define internet_lbl 0 "No internet use" 1 "Internet use  last 12 months"
label values internet_use internet_lbl
label variable internet_use "Internet use (binary: only  last 12 months = Yes)"

tab internet_use


********************************************
* Confounders
*******************************************

* Define indicator for adequate ANC visits (4 or more)
gen ANC_adequate = .
replace ANC_adequate = 1 if m14_1 >= 4
replace ANC_adequate = 0 if m14_1 < 4 & m14_1 >= 0
label define ANC_adequate_lbl 0 "Less than 4 visits" 1 "4 or more visits"
label values ANC_adequate ANC_adequate_lbl
label variable ANC_adequate "Adequate ANC visits (4 or more)"

* Define indicator for institutional delivery
gen inst_delivery = .
replace inst_delivery = 1 if inlist(m15_1, 159, 19, 242, 102, 269, 11, 53, 26, 24, 645, 1602, 2, 96)
replace inst_delivery = 0 if m15_1 >= 0 & !inlist(m15_1, 159, 19, 242, 102, 269, 11, 53, 26, 24, 645, 1602, 2, 96)
label define inst_delivery_lbl 0 "Non-institutional delivery" 1 "Institutional delivery"
label values inst_delivery inst_delivery_lbl
label variable inst_delivery "Place of delivery (Institutional vs Non-institutional)"

* Define indicator for postnatal check (1 = yes, 0 = no)
gen PNC = .
replace PNC = 1 if m66_1 == 1
replace PNC = 0 if m66_1 == 0
label define PNC_lbl 0 "No postnatal check" 1 "Postnatal check"
label values PNC PNC_lbl
label variable PNC "Postnatal health check at home"

* Create composite reproductive care variable
gen reproductive_care = .

* 2 = Adequate care: All three adequate
replace reproductive_care = 2 if ANC_adequate == 1 & inst_delivery == 1 & PNC == 1

* 1 = Partial care: At least one but not all adequate
replace reproductive_care = 1 if ///
    inrange(ANC_adequate,0,1) & inrange(inst_delivery,0,1) & inrange(PNC,0,1) & ///
    (ANC_adequate + inst_delivery + PNC >= 1 & ANC_adequate + inst_delivery + PNC < 3)

* 0 = Inadequate care: None adequate
replace reproductive_care = 0 if ANC_adequate == 0 & inst_delivery == 0 & PNC == 0

* Missing if any component missing and not classified above
replace reproductive_care = . if missing(ANC_adequate) | missing(inst_delivery) | missing(PNC)

label define reproductive_care_lbl 0 "Inadequate care" 1 "Partial care" 2 "Adequate care"
label values reproductive_care reproductive_care_lbl
label variable reproductive_care "Composite reproductive health care indicator"

* Check with tabulation including missing
tab reproductive_care, missing label

tab reproductive_care



* Create binary parity variable for total children ever born
gen parity_binary = .
replace parity_binary = 0 if inrange(v201, 0, 2)
replace parity_binary = 1 if v201 >= 3

label define parity_bin_lbl 0 "Low parity (0-2 children)" 1 "High parity (3+ children)"
label values parity_binary parity_bin_lbl
label variable parity_binary "Parity (binary) based on total children ever born"

* Create binary variable for number of living children
gen living_children_binary = .
replace living_children_binary = 0 if inrange(v218, 0, 2)
replace living_children_binary = 1 if v218 >= 3

label define living_bin_lbl 0 "Low number of living children (0-2)" 1 "High number of living children (3+)"
label values living_children_binary living_bin_lbl
label variable living_children_binary "Number of living children (binary)"

tab parity_binary
tab living_children_binary


*** 1. INDIVIDUAL-LEVEL SOCIODEMOGRAPHIC VARIABLES ***
* Age Group recoding and labeling with missing handling

gen women_age = .
replace women_age = 1 if inrange(v012, 15, 19)
replace women_age = 2 if inrange(v012, 20, 24)
replace women_age = 3 if inrange(v012, 25, 29)
replace women_age = 4 if inrange(v012, 30, 34)
replace women_age = 5 if inrange(v012, 35, 39)
replace women_age = 6 if inrange(v012, 40, 44)
replace women_age = 7 if inrange(v012, 45, 49)

label define agegroup 1 "15–19" 2 "20–24" 3 "25–29" 4 "30–34" 5 "35–39" 6 "40–44" 7 "45–49", replace
label values women_age agegroup

tab women_age


* Woman's Education
gen education_woman = .
replace education_woman = 0 if v106 <= 1
replace education_woman = 1 if v106 == 2
replace education_woman = 2 if v106 >= 3
label define edu_lbl 0 "No/Primary" 1 "Secondary Incomplete" 2 "Secondary+"
label values education_woman edu_lbl

tab education_woman




* Number of Living Children with missing handling
tab v128
gen num_children = .
replace num_children = 0 if v218 == 0
replace num_children = 1 if inrange(v218, 1, 2)
replace num_children = 2 if v218 >= 3 & v218 != .

label define child_lbl 0 "None" 1 "1–2" 2 "3+", replace
label values num_children child_lbl

tab num_children




* Recode v213 to a new variable called currently_pregnant
tab v213

gen currently_pregnant = .
replace currently_pregnant = 0 if v213 == 0    // no or unsure
replace currently_pregnant = 1 if v213 == 1    // yes

* Label the new variable
label define preg_lbl 0 "No or unsure" 1 "Yes"
label values currently_pregnant preg_lbl

* Add a variable label
label variable currently_pregnant "Currently pregnant status"


tab currently_pregnant


* Recode v504 to a new variable called residing_with

tab v504
gen residing_status = .
replace residing_status = 1 if v504 == 1
replace residing_status = 0 if inlist(v504, 2, 3)

label define residing_status_lbl 0 "Not residing with husband/partner" 1 "Residing with husband/partner"
label values residing_status residing_status_lbl
label variable residing_status "Current residence status with husband/partner"

tab residing_status


* handling missing

* missing handling
gen any_residing_status=0
replace any_residing_status=1 if inrange(residing_status,1,20)
tab any_residing_status



 tab v406 // abstainng
 

 
* Create binary variable: 1 = Yes, 0 = No
gen currently_abstaining = .
replace currently_abstaining = 1 if v406 == 1
replace currently_abstaining = 0 if v406 == 0

* Define and assign value labels
label define abstain_lbl 0 "No" 1 "Yes"
label values currently_abstaining abstain_lbl

* Label the variable for publication
label variable currently_abstaining "Currently abstaining from sexual intercourse (Yes=1, No=0)"

* Check the result
tab currently_abstaining
 
 tab v503 // কয়বার বিবাহ/দাম্পত্য সম্পর্ক

* Create a binary variable: 0 = once, 1 = more than once
gen number_of_unions = .
replace number_of_unions = 0 if v503 == 1
replace number_of_unions = 1 if v503 > 1

* Define value labels
label define union_lbl 0 "Once" 1 "More than once"

* Assign value labels
label values number_of_unions union_lbl

* Label the variable for publication
label variable number_of_unions "Number of marital unions (Once = 0, More than once = 1)"

* Tabulate to confirm
tab number_of_unions

 
 
 
 
 
 
 

* Generate a new variable menstruated_last6wks
gen menstruated_last6wks = .
replace menstruated_last6wks = 1 if v216 == 1   // yes
replace menstruated_last6wks = 0 if v216 == 0   // no

* Label the new variable values
label define menses_lbl 0 "No" 1 "Yes"
label values menstruated_last6wks menses_lbl

* Label the variable
label variable menstruated_last6wks "Menstruated in last six weeks"

* Check the recoded variable with a tabulation
tab menstruated_last6wks




* Generate binary variable: 1 = Yes, 0 = No
gen has_health_card = .
replace has_health_card = 1 if s1115a == 1
replace has_health_card = 0 if s1115a == 0

* Define and apply value labels
label define healthcard_lbl 0 "No" 1 "Yes"
label values has_health_card healthcard_lbl

* Label the variable clearly for publication
label variable has_health_card "Possesses a free/subsidized health care services card (Yes=1, No=0)"

* Check the result
tab has_health_card


* pregnent
rename v636 pressure_to_pregnant

tab pressure_to_pregnant

* missing handling
gen any_pressure_to_pregnant=0
replace any_pressure_to_pregnant=1 if inrange(pressure_to_pregnant,1,20)
tab any_pressure_to_pregnant





*Empowerment Index
gen emp_health = inlist(v743a, 1, 2)   // respondent alone or joint
gen emp_purchase = inlist(v743b, 1, 2)
gen emp_money = inlist(v743f, 1, 2)
gen emp_visit = inlist(v743d, 1, 2)
gen emp_fp = inlist(v632, 1, 3)        // respondent or joint decision

* Composite empowerment score
gen emp_score = emp_health + emp_purchase + emp_money + emp_visit + emp_fp



gen emp_level = .
replace emp_level = 0 if emp_score <= 2   // No
replace emp_level = 1 if emp_score >= 3   // Yes
label define emp_lbl 0 "No" 1 "Yes"
label values emp_level emp_lbl

tab emp_level // Yes" (empowered) ,"No" (not empowered)















tab v632 // decision maker for using contraception


gen contracept_decision = .
replace contracept_decision = 1 if inlist(v632, 1, 3)     // respondent or joint decision
replace contracept_decision = 0 if inlist(v632, 2, 4, 6)  // husband/partner, someone else, other
label define contraceptision_lbl 0 "Husband/Other" 1 "Respondent/Joint"
label values contracept_decision contraceptision_lbl
tab contracept_decision









* IPV
 tab v744a
 tab v744b
 tab v744c
 tab v744d
 tab v744e
 
 * Recode "don't know" (usually coded as 2) to missing for each IPV justification question
foreach var in v744a v744b v744c v744d v744e {
    replace `var' = . if `var' == 2
}

* Generate IPV justification binary variable:
* 1 = Justifies beating in at least one condition
* 0 = Does NOT justify beating in any condition
gen ipv_justified = 0
replace ipv_justified = 1 if v744a == 1 | v744b == 1 | v744c == 1 | v744d == 1 | v744e == 1

* Label the variable for publication
label define ipv_lbl 0 "Does not justify IPV" 1 "Justifies IPV"
label values ipv_justified ipv_lbl
label variable ipv_justified "Justification of intimate partner violence (any condition)"

* Tabulate the new variable
tab ipv_justified, missing

 


*******Another confounder****

* Place of residence/area (v025)
rename v025 area
tab area, mis

label define area_label 1 "Urban" 2 "Rural"
label values area area_label
tabulate area

* Division (v024)
rename v024 hh_division
tab hh_division, mis


* Religion (v130)
* Step 1: Generate binary religion variable
* Drop existing variable if it exists
capture drop religion_bin

* Create religion_bin variable with missing initially
gen religion_bin = .

* Assign 1 = Muslim if v130 == 1
replace religion_bin = 1 if v130 == 1

* Assign 0 = Non-Muslim if v130 is in 2,3,4,5 (Hinduism, Buddhist, Christianity, Others)
replace religion_bin = 0 if inlist(v130, 2, 3, 4, 5)

* For any other values (including missing), assign Non-Muslim (0) to have no missing in religion_bin
replace religion_bin = 0 if missing(religion_bin)

* Label the variable
label define rel_lbl 1 "Muslim" 0 "Non-Muslim"
label values religion_bin rel_lbl

* Check frequencies
tab religion_bin

* Household wealth index v190 

* Drop existing categorized wealth variable if it exists
capture drop wealth_cat

* Create a new variable for wealth category
gen wealth_cat = .

* Categorize: Poor (poorest + poorer)
replace wealth_cat = 0 if inlist(v190, 1, 2)   // 1 = poorest, 2 = poorer

* Categorize: Middle class (middle)
replace wealth_cat = 1 if v190 == 3

* Categorize: Rich (richer + richest)
replace wealth_cat = 2 if inlist(v190, 4, 5)

* Label the variable categories
label define wealth_lbl 0 "Poor" 1 "Middle Class" 2 "Rich"
label values wealth_cat wealth_lbl

* Check the frequencies
tab wealth_cat


* Household size (v136)
tab v136, mis

* Drop existing categorized variable if exists
capture drop hh_size_cat

* Generate new categorical variable
gen hh_size_cat = .

* Assign 0 if household size is 1, 2, or 3
replace hh_size_cat = 0 if inlist(v136, 1, 2, 3)

* Assign 1 if household size is 4 or more
replace hh_size_cat = 1 if v136 >= 4

* Label the categories
label define hh_lbl 0 "1-3 members" 1 "4 or more members"
label values hh_size_cat hh_lbl

* Tabulate to check
tab hh_size_cat


* sex of the household head (V151)
tab v151, mis
rename v151 hh_head_sex
tab hh_head_sex


* currently working
rename  v714 currently_working
tab currently_working

* father edu
rename s115_1 father_edu

tab father_edu








* Confounder
* Generate the family planning message exposure variable with missing initially
gen fp_exposure = .

* Define no exposure if all variables indicate '0' (no exposure)
replace fp_exposure = 0 if v384a == 0 & v384b == 0 & v384c == 0 & v384d == 0 & ///
                       v384e == 0 & v384f == 0 & v384g == 0 & v384h == 0

* Define exposure if any variable indicates '1' (exposed to FP messages)
replace fp_exposure = 1 if v384a == 1 | v384b == 1 | v384c == 1 | v384d == 1 | ///
                       v384e == 1 | v384f == 1 | v384g == 1 | v384h == 1

* Define value labels for better readability in tables and outputs
label define fp_exposure_lbl 0 "No exposure to FP messages" 1 "Exposed to FP messages"

* Apply the value labels to the variable
label values fp_exposure fp_exposure_lbl

* Optionally, add a variable label describing the variable clearly
label variable fp_exposure "Exposure to Family Planning Messages (Composite Indicator)"

tab fp_exposure






*getting medical |help for self: not wanting to go | alone:
*tab v467f
* Distance to health facility 
* tav v467d

* healthcare access
gen byte any_big_problem = .   // initialize with missing

replace any_big_problem = 1 if v467f == 1 | v467d == 1
replace any_big_problem = 0 if (v467f == 2 & v467d == 2)

// define and assign labels
label define problemlbl 0 "No big problem" 1 "Big problem"
label values any_big_problem problemlbl

tab any_big_problem, missing


*-----------------------------------------------------*
* 3. Caesarean section - categorized                  *
*-----------------------------------------------------*
rename m17_1 csection_raw

gen byte csection = .
replace csection = 0 if csection_raw == 0
replace csection = 1 if csection_raw == 1

label define cs_lbl 0 "No C-section" 1 "C-section"
label values csection cs_lbl

*-----------------------------------------------------*
* 4. Tabulate all three variables                     *
*-----------------------------------------------------*

tab csection, missing // remove this



* media 

***************************************************************************
* Media - Internet use binary coding

gen mobile_own = v169a
label define mobile_lbl 0 "No mobile phone" 1 "Owns mobile phone", modify
label values mobile_own mobile_lbl
label variable mobile_own "Mobile phone ownership (binary)"

 tab mobile_own
 
 
 
 * Create binary variable for reading newspaper or magazine
gen reads_news = .
replace reads_news = 0 if inlist(v157, 0, 1)   // not at all & less than once a week = No (0)
replace reads_news = 1 if v157 == 2            // at least once a week = Yes (1)

label define reads_lbl 0 "No reading" 1 "Reads newspaper/magazine"
label values reads_news reads_lbl
label variable reads_news "Binary: Reads newspaper or magazine"

tab reads_news

 
 
 gen watch_tv = .
replace watch_tv = 0 if inlist(v159, 0, 1)   // not at all & less than once a week = No (0)
replace watch_tv = 1 if v159 == 2            // at least once a week = Yes (1)

label define tv_lbl 0 "No TV" 1 "Watches TV"
label values watch_tv tv_lbl
label variable watch_tv "Binary: Watches television"

tab watch_tv


gen listen_radio = .
replace listen_radio = 0 if inlist(v158, 0, 1)   // not at all & less than once a week = No (0)
replace listen_radio = 1 if v158 == 2            // at least once a week = Yes (1)

label define radio_lbl 0 "No Radio" 1 "Listens Radio"
label values listen_radio radio_lbl
label variable listen_radio "Binary: Listens to radio"

tab listen_radio


* Create composite media exposure variable
gen media_exposure = 0

replace media_exposure = 1 if mobile_own == 1 | reads_news == 1 | watch_tv == 1 | listen_radio == 1

label define media_lbl 0 "No media exposure" 1 "Has media exposure"
label values media_exposure media_lbl
label variable media_exposure "Composite: Any media exposure"

tab media_exposure



* autonomy/women empowerment
* Now your dataset has exactly 18,987 observations

* Step 1: Recode each decision variable to binary
gen byte dec_health = 0
replace dec_health = 1 if inlist(v743a, 1, 2)

gen byte dec_purchase = 0
replace dec_purchase = 1 if inlist(v743b, 1, 2)

gen byte dec_visits = 0
replace dec_visits = 1 if inlist(v743d, 1, 2)

gen byte dec_money = 0
replace dec_money = 1 if inlist(v743f, 1, 2)

* Step 2: Composite variable (participates if any decision is 1)
gen byte decision_autonomy = (dec_health == 1 | dec_purchase == 1 | dec_visits == 1 | dec_money == 1)

* Step 3: Label the composite variable
label define decision_lbl 0 "No participation" 1 "Participates in decision"
label values decision_autonomy decision_lbl

* Step 4: Tabulate
tab decision_autonomy, missing


*******************************************************
*****************************************************************
* Bivariate tabulations without chi-squared tests

tab anxiety_cat preg_loss_cat, missing
tab anxiety_cat decision_autonomy, missing
tab anxiety_cat any_big_problem, missing
tab anxiety_cat csection, missing
tab anxiety_cat religion_bin, missing
tab anxiety_cat wealth_cat, missing
tab anxiety_cat hh_size_cat, missing
tab anxiety_cat any_pressure_to_pregnant, missing
tab anxiety_cat ipv_justified, missing
tab anxiety_cat currently_abstaining, missing
tab anxiety_cat any_residing_status, missing
tab anxiety_cat number_of_unions, missing 
tab anxiety_cat hh_division, missing
tab anxiety_cat area, missing

* Bivariate tabulations for depression

tab depression_cat preg_loss_cat, missing
tab depression_cat decision_autonomy, missing
tab depression_cat any_big_problem, missing
tab depression_cat csection, missing
tab depression_cat religion_bin, missing
tab depression_cat wealth_cat, missing
tab depression_cat hh_size_cat, missing
tab depression_cat any_pressure_to_pregnant, missing
tab depression_cat ipv_justified, missing
tab depression_cat currently_abstaining, missing
tab depression_cat any_residing_status, missing
tab depression_cat number_of_unions, missing
tab depression_cat hh_division, missing
tab depression_cat area, missing


 *************************************************************
* Univariate tabulations: Frequency of each variable
*************************************************************

* Anxiety and Depression Categories
tab anxiety_cat, missing
tab depression_cat, missing

* Pregnancy Loss
tab preg_loss_cat, missing

* Decision Autonomy
tab decision_autonomy, missing


* IPV Justified
tab ipv_justified, missing

* Currently Abstaining
tab currently_abstaining, missing
* Big Problems
tab any_big_problem, missing

* C-section
tab csection, missing

* Religion (binary)
tab religion_bin, missing

* Wealth Category
tab wealth_cat, missing

* Household Size Category
tab hh_size_cat, missing

* Pressure to Get Pregnant
tab any_pressure_to_pregnant, missing

* Residing Status
tab any_residing_status, missing

* Number of Unions
tab number_of_unions, missing

* Household Division
tab hh_division, missing

* Area
tab area, missing


*****************************************************************
* Bivariate tabulations with chi-squared tests
tab anxiety_cat preg_loss_cat, chi2 missing
tab anxiety_cat decision_autonomy, chi2 missing
tab anxiety_cat any_big_problem, chi2 missing
tab anxiety_cat csection, chi2 missing
tab anxiety_cat religion_bin, chi2 missing
tab anxiety_cat wealth_cat, chi2 missing
tab anxiety_cat hh_size_cat, chi2 missing
tab anxiety_cat any_pressure_to_pregnant, chi2 missing
tab anxiety_cat ipv_justified, chi2 missing
tab anxiety_cat currently_abstaining, chi2 missing
tab anxiety_cat any_residing_status, chi2 missing
tab anxiety_cat number_of_unions, chi2 missing 
tab anxiety_cat hh_division, chi2 missing
tab anxi area, chi2 missing

 
 * Bivariate tabulations with chi-squared tests for depression
tab depression_cat preg_loss_cat, chi2 missing
tab depression_cat decision_autonomy, chi2 missing
tab depression_cat any_big_problem, chi2 missing
tab depression_cat csection, chi2 missing
tab depression_cat religion_bin, chi2 missing
tab depression_cat wealth_cat, chi2 missing
tab depression_cat hh_size_cat, chi2 missing
tab depression_cat any_pressure_to_pregnant, chi2 missing
tab depression_cat ipv_justified, chi2 missing
tab depression_cat currently_abstaining, chi2 missing
tab depression_cat any_residing_status, chi2 missing
tab depression_cat number_of_unions, chi2 missing
tab depression_cat hh_division, chi2 missing
tab depression_cat area, chi2 missing



 
 logistic anxiety_cat i. preg_loss_cat
 logistic anxiety_cat reproductive
 


* Bivariate logistic regressions with anxiety_cat as outcome
logistic anxiety_cat i.preg_loss_cat
logistic anxiety_cat i.ipv_justified

logistic anxiety_cat i.currently_abstaining
logistic anxiety_cat i.decision_autonomy
logistic anxiety_cat i.any_big_problem
logistic anxiety_cat i.csection
logistic anxiety_cat i.religion_bin
logistic anxiety_cat i.wealth_cat
logistic anxiety_cat i.hh_size_cat
logistic anxiety_cat i.any_pressure_to_pregnant

logistic anxiety_cat i.any_residing_status
logistic anxiety_cat i.number_of_unions

 
 
 
 * Bivariate logistic regressions with depression_cat as outcome
 logistic anxiety_cat i.preg_loss_cat
logistic anxiety_cat i.ipv_justified

logistic anxiety_cat i.currently_abstaining
 

logistic depression_cat i.decision_autonomy
logistic depression_cat i.any_big_problem
logistic depression_cat i.csection
logistic depression_cat i.religion_bin
logistic depression_cat i.wealth_cat
logistic depression_cat i.hh_size_cat
logistic depression_cat i.any_pressure_to_pregnant

logistic depression_cat i.any_residing_status
logistic depression_cat i.number_of_unions

 
 
 
 
 

svy: logistic anxiety_cat i.preg_loss_cat
svy: logistic anxiety_cat i.ipv_justified
svy: logistic anxiety_cat i.currently_abstaining
svy: logistic anxiety_cat i.decision_autonomy
svy: logistic anxiety_cat i.any_big_problem
svy: logistic anxiety_cat i.csection
svy: logistic anxiety_cat i.religion_bin
svy: logistic anxiety_cat i.wealth_cat
svy: logistic anxiety_cat i.hh_size_cat
svy: logistic anxiety_cat i.any_pressure_to_pregnant
svy: logistic anxiety_cat i.any_residing_status
svy: logistic anxiety_cat i.number_of_unions
svy: logistic anxiety_cat i. hh_division
svy: logistic anxiety_cat i. area



svy: logistic depression_cat i.preg_loss_cat
svy: logistic depression_cat i.ipv_justified
svy: logistic depression_cat i.currently_abstaining
svy: logistic depression_cat i.decision_autonomy
svy: logistic depression_cat i.any_big_problem
svy: logistic depression_cat i.csection
svy: logistic depression_cat i.religion_bin
svy: logistic depression_cat i.wealth_cat
svy: logistic depression_cat i.hh_size_cat
svy: logistic depression_cat i.any_pressure_to_pregnant
svy: logistic depression_cat i.any_residing_status
svy: logistic depression_cat i.number_of_unions
svy: logistic depression_cat i. hh_division
svy: logistic depression_cat i. area














*********************************************
* crude model : anxiety

svy:logistic anxiety_cat i. preg_loss_cat 

logit anxiety_cat i. preg_loss_cat 

 
 *-----------------------------------------*
* Stepwise Model Building for Anxiety_cat *
*-----------------------------------------*

* Crude Model: Pregnancy Loss Only
*-----------------------------------------*
* Stepwise Logistic Regression (No svy)   *
* Outcome: anxiety_cat                    *
*-----------------------------------------*

* Crude Model: Only pregnancy loss
logistic anxiety_cat i.preg_loss_cat
estimates store m0

* Step 1: Add reproductive care
logistic anxiety_cat i.preg_loss_cat i.ipv_justified
estimates store m1
lrtest m1 m0, stats
estimates stats m0 m1 // m1 is better
/*
-------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m0 |     19,987  -11637.16  -11590.93       3   23187.87   23211.57
          m1 |     19,987  -11637.16  -11566.96       4   23141.93   23173.54

*/





* Step 2: Add decision autonomy
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy
estimates store m2
lrtest m2 m1, stats
estimates stats m1 m2 // m2 is better 
/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m1 |     19,987  -11637.16  -11566.96       4   23141.93   23173.54
          m2 |     19,987  -11637.16  -11557.82       5   23125.63   23165.15

*/

* Step 3: Add any big problem
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem
estimates store m3
lrtest m3 m2, stats
estimates stats m2 m3 // m3 better

/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m2 |     19,987  -11637.16  -11557.82       5   23125.63   23165.15
          m3 |     19,987  -11637.16  -11526.65       6    23065.3   23112.71

*/

* Step 4: Add religion
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin
estimates store m4
lrtest m4 m3, stats
estimates stats m3 m4 // m4 better
/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m3 |     19,987  -11637.16  -11526.65       6    23065.3   23112.71
          m4 |     19,987  -11637.16  -11513.47       7   23040.93   23096.25
*/




* Step 5: Add wealth
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat
estimates store m5
lrtest m5 m4, stats
estimates stats m4 m5 // m5 better


/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m4 |     19,987  -11637.16  -11513.47       7   23040.93   23096.25
          m5 |     19,987  -11637.16  -11482.82       9   22983.64   23054.77
-----------------------------------------------------------------------------

*/



* Step 6: Add household size
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat

estimates store m6
lrtest m6 m5, stats
estimates stats m5 m6 // m6 better

/*
---------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m5 |     19,987  -11637.16  -11482.82       9   22983.64   23054.77
          m6 |     19,987  -11637.16  -11475.25      10    22970.5   23049.52
-----------------------------------------------------------------------------

*/


* Step 7: Add pressure to pregnent
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant

estimates store m7
lrtest m7 m6, stats
estimates stats m6 m7

/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m6 |     19,987  -11637.16  -11475.25      10    22970.5   23049.52
          m7 |     19,987  -11637.16  -11454.34      11   22930.68   23017.61

*/.




* Step 8: Add IPV

logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining

estimates store m8
lrtest m8 m7, stats
estimates stats m7 m8 // m8 better

/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m7 |     19,987  -11637.16  -11454.34      11   22930.68   23017.61
          m8 |     19,987  -11637.16   -11451.2      12   22926.41   23021.24
-----------------------------------------------------------------------------

*/


* Step 10: Add residing status

logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status

estimates store m9
lrtest m9 m8, stats
estimates stats m8 m9 // m9 better

/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m8 |     19,987  -11637.16   -11451.2      12   22926.41   23021.24
          m9 |     19,987  -11637.16  -11445.08      13   22916.16    23018.9
 
*/



* Step 11: number_of_unions

logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status  i.number_of_unions

estimates store m10
lrtest m10 m9, stats
estimates stats m10 m9 // m10 better

/*
-------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          m9 |     19,987  -11637.16  -11445.08      13   22916.16    23018.9
         m10 |     19,987  -11637.16  -11440.42      14   22908.84   23019.4
*/

* Step 12: Add   media_exposure


logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status  i.number_of_unions i. media_exposure

estimates store m11
lrtest m10 m11, stats
estimates stats m11 m10 //  m11 better
/*------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         m11 |     19,987  -11637.16  -11440.35      15   22910.69   23029.23
         m10 |     19,987  -11637.16  -11440.42      14   22908.84   23019.48
*/




* Step 12: Add   division


logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status  i.number_of_unions i. media_exposure i.hh_division

estimates store m12
lrtest m12 m11, stats
estimates stats m11 m12 //  m12 better




 
********************************************************************************
* Final model m12
********************************************************************************

svy:logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status  i.number_of_unions i. media_exposure i.hh_division

/*

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         m11 |     19,987  -11637.16  -11440.35      15   22910.69   23029.23
         m12 |     19,987  -11637.16  -11394.34      22   22832.68   23006.54
-----------------------------------------------------------------------------

*/

*Multicollinearity Check
regress anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i. wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.i.any_residing_status  i.number_of_unions i. media_exposure i.hh_division


vif // (mean VIF= 1.38)

* (Optional) Correlation Matrix
pwcorr preg_loss_cat ipv_justified decision_autonomy any_big_problem religion_bin wealth_cat hh_size_cat ///
       any_pressure_to_pregnant currently_abstaining any_residing_status number_of_unions media_exposure ///
       hh_division, sig


* Goodness-of-Fit (GOF)
logistic anxiety_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i.hh_division


estat gof, group(10) table
/*

 Number of observations = 19,987
       Number of groups =     10
Hosmer–Lemeshow chi2(8) =   5.25
            Prob > chi2 = 0.7307

*/



	
***************************************************************************
*  Exposure 2: internet_use
* crude model: anxiety ~ internet use
****************************************************************************


* Step 0: Crude Model
logistic anxiety_cat i.internet_use
est store M0

* Step 1: Add ipv_justified
logistic anxiety_cat i.internet_use ipv_justified
est store M1

* Step 2: Add decision_autonomy
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy
est store M2

* Step 3: Add any_big_problem
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem
est store M3

* Step 4: Add religion_bin
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin
est store M4

* Step 5: Add wealth_cat
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat
est store M5

* Step 6: Add hh_size_cat
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat
est store M6

* Step 7: Add any_pressure_to_pregnant
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant
est store M7

* Step 8: Add currently_abstaining
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining
est store M8

* Step 9: Add any_residing_status
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status
est store M9

* Step 10: Add number_of_unions
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions
est store M10

* Step 11: Add media_exposure
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure
est store M11

* Add division
logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division
est store M12

	
	
* Model Comparisons	
	
lrtest M1 M0, stats

lrtest M2 M1, stats
lrtest M3 M2, stats
lrtest M4 M3, stats
lrtest M5 M4, stats
lrtest M6 M5, stats
lrtest M7 M6, stats
lrtest M8 M7, stats
lrtest M9 M8, stats
lrtest M10 M9, stats
lrtest M11 M10, stats
lrtest M11 M12, stats


	
* M12 final models

svy:logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division



/*
       
         
. lrtest M1 M0, stats

Likelihood-ratio test
Assumption: M0 nested within M1

 LR chi2(1) =  45.23
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M0 |     19,987  -11637.16  -11568.33       2   23140.66   23156.47
          M1 |     19,987  -11637.16  -11545.72       3   23097.43   23121.14
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. 
. lrtest M2 M1, stats

Likelihood-ratio test
Assumption: M1 nested within M2

 LR chi2(1) =  11.18
Prob > chi2 = 0.0008

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M1 |     19,987  -11637.16  -11545.72       3   23097.43   23121.14
          M2 |     19,987  -11637.16  -11540.13       4   23088.25   23119.86
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M3 M2, stats

Likelihood-ratio test
Assumption: M2 nested within M3

 LR chi2(1) =  50.73
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M2 |     19,987  -11637.16  -11540.13       4   23088.25   23119.86
          M3 |     19,987  -11637.16  -11514.76       5   23039.52   23079.03
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M4 M3, stats

Likelihood-ratio test
Assumption: M3 nested within M4

 LR chi2(1) =  33.05
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M3 |     19,987  -11637.16  -11514.76       5   23039.52   23079.03
          M4 |     19,987  -11637.16  -11498.23       6   23008.47   23055.89
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M5 M4, stats

Likelihood-ratio test
Assumption: M4 nested within M5

 LR chi2(2) =  18.94
Prob > chi2 = 0.0001

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M4 |     19,987  -11637.16  -11498.23       6   23008.47   23055.89
          M5 |     19,987  -11637.16  -11488.76       8   22993.52   23056.75
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M6 M5, stats

Likelihood-ratio test
Assumption: M5 nested within M6

 LR chi2(1) =  20.40
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M5 |     19,987  -11637.16  -11488.76       8   22993.52   23056.75
          M6 |     19,987  -11637.16  -11478.56       9   22975.12   23046.25
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M7 M6, stats

Likelihood-ratio test
Assumption: M6 nested within M7

 LR chi2(1) =  43.68
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M6 |     19,987  -11637.16  -11478.56       9   22975.12   23046.25
          M7 |     19,987  -11637.16  -11456.72      10   22933.44   23012.47
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M8 M7, stats

Likelihood-ratio test
Assumption: M7 nested within M8

 LR chi2(1) =   4.05
Prob > chi2 = 0.0443

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M7 |     19,987  -11637.16  -11456.72      10   22933.44   23012.47
          M8 |     19,987  -11637.16   -11454.7      11    22931.4   23018.33
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M9 M8, stats

Likelihood-ratio test
Assumption: M8 nested within M9

 LR chi2(1) =  29.06
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M8 |     19,987  -11637.16   -11454.7      11    22931.4   23018.33
          M9 |     19,987  -11637.16  -11440.17      12   22904.34   22999.17
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M10 M9, stats

Likelihood-ratio test
Assumption: M9 nested within M10

 LR chi2(1) =   9.79
Prob > chi2 = 0.0018

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          M9 |     19,987  -11637.16  -11440.17      12   22904.34   22999.17
         M10 |     19,987  -11637.16  -11435.27      13   22896.55   22999.28
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M11 M10, stats

Likelihood-ratio test
Assumption: M10 nested within M11

 LR chi2(1) =   4.58
Prob > chi2 = 0.0323

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         M10 |     19,987  -11637.16  -11435.27      13   22896.55   22999.28
         M11 |     19,987  -11637.16  -11432.98      14   22893.97    23004.6
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest M11 M12, stats

Likelihood-ratio test
Assumption: M11 nested within M12

 LR chi2(7) =  90.68
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         M11 |     19,987  -11637.16  -11432.98      14   22893.97    23004.6
         M12 |     19,987  -11637.16  -11387.64      21   22817.29   22983.25
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. 
end of do-file

. 

*/	
	


*Check Multicollinearity (VIF)
regress anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division



vif // (mean VIF= 1.42)

*Goodness-of-Fit Tests for Logistic Regression
 logistic anxiety_cat i.internet_use ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division


	

*Hosmer-Lemeshow Test
lfit, group(10)
/*

Goodness-of-fit test after logistic model
Variable: anxiety_cat

 Number of observations = 19,987
       Number of groups =     10
Hosmer–Lemeshow chi2(8) =   7.24
            Prob > chi2 = 0.511

*/
	
	
	
	
*********************************************************
* Depression
**********************************************************

* Crude
svy:logistic depression_cat i.preg_loss_cat 





*********************************************************
* Depression: Stepwise survey logistic regression
*********************************************************
* Step 0: Crude model
logistic depression_cat i.preg_loss_cat
est store D0

* Step 1: Add IPV justification
logistic depression_cat i.preg_loss_cat i.ipv_justified
est store D1

* Step 2: Add decision autonomy
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy
est store D2

* Step 3: Add any big problem
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem
est store D3

* Step 4: Add religion
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin
est store D4

* Step 5: Add wealth category
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat
est store D5

* Step 6: Add household size category
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat
est store D6

* Step 7: Add pressure to pregnant variable
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant
est store D7

* Step 8: Add currently abstaining
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining
est store D8

* Step 9: Add residing status
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status
est store D9

* Step 10: Add number of unions
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions
est store D10

* Step 11: Add media exposure
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure
est store D11



* Step 11: Division
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division
est store D12





lrtest D0 D1, stats
lrtest D1 D2, stats
lrtest D2 D3, stats
lrtest D3 D4, stats
lrtest D4 D5, stats
lrtest D5 D6, stats
lrtest D6 D7, stats
lrtest D7 D8, stats
lrtest D8 D9, stats
lrtest D9 D10, stats
lrtest D10 D11, stats
lrtest D12 D11, stats


* m10 beteer

/*

 
. 
. lrtest D0 D1, stats

Likelihood-ratio test
Assumption: D0 nested within D1

 LR chi2(1) =  24.33
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D0 |     19,987  -12068.85  -12040.03       3   24086.06   24109.77
          D1 |     19,987  -12068.85  -12027.86       4   24063.73   24095.34
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D1 D2, stats

Likelihood-ratio test
Assumption: D1 nested within D2

 LR chi2(1) =   3.87
Prob > chi2 = 0.0493

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D1 |     19,987  -12068.85  -12027.86       4   24063.73   24095.34
          D2 |     19,987  -12068.85  -12025.93       5   24061.86   24101.38
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D2 D3, stats

Likelihood-ratio test
Assumption: D2 nested within D3

 LR chi2(1) =  52.81
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D2 |     19,987  -12068.85  -12025.93       5   24061.86   24101.38
          D3 |     19,987  -12068.85  -11999.53       6   24011.05   24058.47
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D3 D4, stats

Likelihood-ratio test
Assumption: D3 nested within D4

 LR chi2(1) =  22.12
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D3 |     19,987  -12068.85  -11999.53       6   24011.05   24058.47
          D4 |     19,987  -12068.85  -11988.46       7   23990.93   24046.25
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D4 D5, stats

Likelihood-ratio test
Assumption: D4 nested within D5

 LR chi2(2) =  13.54
Prob > chi2 = 0.0011

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D4 |     19,987  -12068.85  -11988.46       7   23990.93   24046.25
          D5 |     19,987  -12068.85  -11981.69       9   23981.39   24052.52
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D5 D6, stats

Likelihood-ratio test
Assumption: D5 nested within D6

 LR chi2(1) =  23.38
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D5 |     19,987  -12068.85  -11981.69       9   23981.39   24052.52
          D6 |     19,987  -12068.85  -11970.01      10   23960.01   24039.04
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D6 D7, stats

Likelihood-ratio test
Assumption: D6 nested within D7

 LR chi2(1) =  44.07
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D6 |     19,987  -12068.85  -11970.01      10   23960.01   24039.04
          D7 |     19,987  -12068.85  -11947.97      11   23917.95   24004.88
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D7 D8, stats

Likelihood-ratio test
Assumption: D7 nested within D8

 LR chi2(1) =   4.96
Prob > chi2 = 0.0259

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D7 |     19,987  -12068.85  -11947.97      11   23917.95   24004.88
          D8 |     19,987  -12068.85  -11945.49      12   23914.98   24009.82
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D8 D9, stats

Likelihood-ratio test
Assumption: D8 nested within D9

 LR chi2(1) =   8.36
Prob > chi2 = 0.0038

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D8 |     19,987  -12068.85  -11945.49      12   23914.98   24009.82
          D9 |     19,987  -12068.85  -11941.31      13   23908.63   24011.36
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D9 D10, stats

Likelihood-ratio test
Assumption: D9 nested within D10

 LR chi2(1) =   4.96
Prob > chi2 = 0.0260

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          D9 |     19,987  -12068.85  -11941.31      13   23908.63   24011.36
         D10 |     19,987  -12068.85  -11938.83      14   23905.67   24016.31
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D10 D11, stats

Likelihood-ratio test
Assumption: D10 nested within D11

 LR chi2(1) =   0.55
Prob > chi2 = 0.4580

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         D10 |     19,987  -12068.85  -11938.83      14   23905.67   24016.31
         D11 |     19,987  -12068.85  -11938.56      15   23907.12   24025.66
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest D12 D11, stats

Likelihood-ratio test
Assumption: D11 nested within D12

 LR chi2(7) =  69.70
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         D11 |     19,987  -12068.85  -11938.56      15   23907.12   24025.66
         D12 |     19,987  -12068.85  -11903.71      22   23851.41   24025.28
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. 
end of do-file

. 


. 




*/



* final model m10
svy:logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions



*Multicollinearity Check
regress depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions


vif // (mean VIF= 1.06)

* . (Optional) Correlation Matrix
pwcorr preg_loss_cat ipv_justified decision_autonomy any_big_problem religion_bin wealth_cat hh_size_cat any_pressure_to_pregnant currently_abstaining any_residing_status number_of_unions media_exposure, sig



* Goodness-of-Fit (GOF)
logistic depression_cat i.preg_loss_cat i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions


estat gof, group(10) table
/*

 
 Number of observations = 19,987
       Number of groups =     10
Hosmer–Lemeshow chi2(8) =  10.76
            Prob > chi2 = 0.2157


*/





* Crude
svy:logistic depression_cat i.internet_use





* Step 0: Crude model (internet use only)
logistic depression_cat i.internet_use
est store S0

* Step 1: Add IPV justification
logistic depression_cat i.internet_use i.ipv_justified
est store S1

* Step 2: Add decision autonomy
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy
est store S2

* Step 3: Add any big problem
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem
est store S3

* Step 4: Add religion
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin
est store S4

* Step 5: Add wealth category
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat
est store S5

* Step 6: Add household size category
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat
est store S6

* Step 7: Add pressure to pregnant
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant
est store S7

* Step 8: Add currently abstaining
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining
est store S8

* Step 9: Add any residing status
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status
est store S9

* Step 10: Add number of unions
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions
est store S10

* Step 11: Add media exposure
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure
est store S11


* Step 12: Division
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions i.media_exposure i. hh_division
est store S12


lrtest S0 S1, stats
lrtest S1 S2, stats
lrtest S2 S3, stats
lrtest S3 S4, stats
lrtest S4 S5, stats
lrtest S5 S6, stats
lrtest S6 S7, stats
lrtest S7 S8, stats
lrtest S8 S9, stats
lrtest S9 S10, stats
lrtest S10 S11, stats // s10 final model
lrtest S12 S11, stats

esttab S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11, ///
    stats(ll aic bic r2_p, fmt(3 3 3 3)) ///
    compress nonumber label ///
    title("Model Comparison: Logistic Regression for depression_cat")


esttab S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 using "D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/models_output.csv", ///
    replace ///
    csv ///
    stats(ll aic bic r2_p, fmt(3 3 3 3)) ///
    compress ///
    nonumber ///
    label ///
    title("Logistic Regression Models for depression_cat")

	
	
/*


. lrtest S0 S1, stats

Likelihood-ratio test
Assumption: S0 nested within S1

 LR chi2(1) =  23.62
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S0 |     19,987  -12068.85  -12043.63       2   24091.25   24107.06
          S1 |     19,987  -12068.85  -12031.82       3   24069.64   24093.34
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S1 S2, stats

Likelihood-ratio test
Assumption: S1 nested within S2

 LR chi2(1) =   1.76
Prob > chi2 = 0.1848

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S1 |     19,987  -12068.85  -12031.82       3   24069.64   24093.34
          S2 |     19,987  -12068.85  -12030.94       4   24069.88   24101.49
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S2 S3, stats

Likelihood-ratio test
Assumption: S2 nested within S3

 LR chi2(1) =  45.97
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S2 |     19,987  -12068.85  -12030.94       4   24069.88   24101.49
          S3 |     19,987  -12068.85  -12007.95       5    24025.9   24065.42
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S3 S4, stats

Likelihood-ratio test
Assumption: S3 nested within S4

 LR chi2(1) =  26.30
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S3 |     19,987  -12068.85  -12007.95       5    24025.9   24065.42
          S4 |     19,987  -12068.85   -11994.8       6   24001.61   24049.02
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S4 S5, stats

Likelihood-ratio test
Assumption: S4 nested within S5

 LR chi2(2) =   2.14
Prob > chi2 = 0.3436

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S4 |     19,987  -12068.85   -11994.8       6   24001.61   24049.02
          S5 |     19,987  -12068.85  -11993.73       8   24003.47   24066.69
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S5 S6, stats

Likelihood-ratio test
Assumption: S5 nested within S6

 LR chi2(1) =  27.53
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S5 |     19,987  -12068.85  -11993.73       8   24003.47   24066.69
          S6 |     19,987  -12068.85  -11979.97       9   23977.94   24049.06
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S6 S7, stats

Likelihood-ratio test
Assumption: S6 nested within S7

 LR chi2(1) =  45.28
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S6 |     19,987  -12068.85  -11979.97       9   23977.94   24049.06
          S7 |     19,987  -12068.85  -11957.33      10   23934.66   24013.69
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S7 S8, stats

Likelihood-ratio test
Assumption: S7 nested within S8

 LR chi2(1) =   3.62
Prob > chi2 = 0.0572

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S7 |     19,987  -12068.85  -11957.33      10   23934.66   24013.69
          S8 |     19,987  -12068.85  -11955.52      11   23933.04   24019.97
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S8 S9, stats

Likelihood-ratio test
Assumption: S8 nested within S9

 LR chi2(1) =  16.49
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S8 |     19,987  -12068.85  -11955.52      11   23933.04   24019.97
          S9 |     19,987  -12068.85  -11947.27      12   23918.55   24013.38
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S9 S10, stats

Likelihood-ratio test
Assumption: S9 nested within S10

 LR chi2(1) =   5.18
Prob > chi2 = 0.0229

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
          S9 |     19,987  -12068.85  -11947.27      12   23918.55   24013.38
         S10 |     19,987  -12068.85  -11944.69      13   23915.37   24018.11
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S10 S11, stats // s10 final model

Likelihood-ratio test
Assumption: S10 nested within S11

 LR chi2(1) =   0.19
Prob > chi2 = 0.6632

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         S10 |     19,987  -12068.85  -11944.69      13   23915.37   24018.11
         S11 |     19,987  -12068.85  -11944.59      14   23917.18   24027.82
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. lrtest S12 S11, stats

Likelihood-ratio test
Assumption: S11 nested within S12

 LR chi2(7) =  68.46
Prob > chi2 = 0.0000

Akaike's information criterion and Bayesian information criterion

-----------------------------------------------------------------------------
       Model |          N   ll(null)  ll(model)      df        AIC        BIC
-------------+---------------------------------------------------------------
         S11 |     19,987  -12068.85  -11944.59      14   23917.18   24027.82
         S12 |     19,987  -12068.85  -11910.36      21   23862.72   24028.68
-----------------------------------------------------------------------------
Note: BIC uses N = number of observations. See [R] BIC note.

. 
end of do-file

. 


*/

* final models s10
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions








*Multicollinearity Check
regress depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions


vif // (mean VIF= 1.10)

* . (Optional) Correlation Matrix
pwcorr inter ipv_justified decision_autonomy any_big_problem religion_bin wealth_cat hh_size_cat any_pressure_to_pregnant currently_abstaining any_residing_status number_of_unions media_exposure, sig



* Goodness-of-Fit (GOF)
logistic depression_cat i.internet_use i.ipv_justified i.decision_autonomy i.any_big_problem i.religion_bin i.wealth_cat i.hh_size_cat i.any_pressure_to_pregnant i.currently_abstaining i.any_residing_status i.number_of_unions

estat gof, group(10) table

/*

 Number of observations = 19,987
       Number of groups =     10
Hosmer–Lemeshow chi2(8) =  13.62
            Prob > chi2 = 0.0922


*/



























































































































































































































































































































































































































































