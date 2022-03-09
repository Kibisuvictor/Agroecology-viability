#subset the data to the last 173 variables
df <- Agroforestry_data[,174:346]

## data cleaning
library(tidyverse)
library(janitor)
## get the names of the dataframe
names(df)

## change the variable names
df1 <- df
names(df1)[1] <- "fertilizer_types_all"

## fourth variable
# remove this variable because it represents a section and its all NAs
df1$`You indicated you practice fallow, please answer the following questions on your practice of fallow.` <- NULL

# fifth variable
names(df1)[4] <- "Average_fallow_duration"

## 6th
names(df1)[5] <-"fallow_protect_cover_crop"

##7th
names(df1)[6] <- "cover_crop_type"


## 8th

names(df1)[7] <- "pest_disease_control"
names(df1)[8] <- "Intercropping"

## 9th
names(df1)[9] <- "Botanical_spray"

## 10th
names(df1)[10] <- "Planting_repellant_plants"

## 11th
names(df1)[11] <- "Crop_rotation"

## 12th 
names(df1)[12] <- "Manual_killing"

## 13th
names(df1)[13] <- "pesticides"

## 14th
names(df1)[14] <- "pest_resistant_varieties"

## 15th
names(df1)[15] <- "Removal_residues"

## 16th
names(df1)[16] <- "Ploughing"

## 17th
names(df1)[17] <- "others"

## 18th
names(df1)[18] <- "no_method"

## 28th
names(df1)[28] <- "pest_disease_method1"

## 29th
names(df1)[29] <- "pest_disease_method2"

## 30th
names(df1)[30] <- "pest_disease_method3"

## 31st
names(df1)[31] <- "other_methods"

## 32, remove the variable because its all NA and it represents a heading
df1$`You indicated using pesticides/herbicides, please answer the following question on your usage of them.` <- NULL

## 33
names(df1)[32] <- "Pesticide_type_reference"

## 34
names(df1)[33] <- "total_herbicide_type"

## 35
names(df1)[34] <- "selective_herbicide_type"

## 36
names(df1)[35] <- "type_pesticide"

### 38
names(df1)[37] <- "farm_animal"

## 39
names(df1)[38] <- "farm_animal_cattle"

## 40
names(df1)[39] <- "farm_animal_sheep"

## 41
names(df1)[40] <- "farm_animal_goats"

## 42
names(df1)[41] <- "farm_animal_donkeys"

## 43
names(df1)[42] <- "farm_animal_horses"

## 44
names(df1)[43] <- "farm_animal_pigs"

## 45
names(df1)[44] <- "farm_animals_poultry"

## 46
names(df1)[45] <- "farm_animals_other"

### 47
names(df1)[46] <- "no_farm_animals"

## 51
names(df1)[51] <- "animals_graze_other"

## 52
names(df1)[52] <- "period_other_animals_graze"

##53
names(df1)[53] <- "quarantine_sick_animals"

## 54
names(df1)[54] <- "quarantine_new_animals"

## 55
names(df1)[55] <- "farm_methods"

## 56
names(df1)[56] <- "methods_name_en"

## 57
names(df1)[57] <- "methods_none"

## 60
df1$`The next section wil ask questions about each of the agroecological practice you do NOT implement.` <- NULL

## 60 Did you or anyone in your household receive credit during the period of reference?
names(df1)[60] <- "recieved_credit"

## 61 What are the reasons you did not receive credit?
names(df1)[61] <- "reasons_not_recieved credit"

## 62 What are the reasons you did not receive credit?/I did not need credit
names(df1)[62] <- "reasons_not_need_credit"

## 63 What are the reasons you did not receive credit?/I did not want to be dependent on a creditor 
#(financial autonomy willing)
names(df1)[63] <- "reasons_autonomy_willing"

## 64 What are the reasons you did not receive credit?/I did not find any institutions or individuals 
#willing to give me credit
names(df1)[64] <- "reasons_no_institution"

## 65 What are the reasons you did not receive credit?/Other
names(df1)[65]<- "reasons_other"

## 71 Now I will ask you questions about how did your household access to food during the past 30 days.
df1$`Now I will ask you questions about how did your household access to food during the past 30 days.` <- NULL

## In the past four weeks, did you worry that your household would not have enough food?
names(df1)[71] <- "worry30_hh_food"

## How often?...249
names(df1)[72] <- "number_of_times"

## In the past four weeks, were you or any household member not able to eat the kinds of foods you preferred 
#because of a lack of resources?
names(df1)[73] <- "not_preffered_food4"

### How often?...251
names(df1)[74] <- "how_often_eat"

## In the past four weeks, did you or any household member have to eat a limited variety 
#of foods due to a lack of resources?
names(df1)[75] <- "limited_variety"

### How often?...253
names(df1)[76] <- "often_limited"

## In the past four weeks, did you or any household member have to eat some foods that you really did 
#not want to eat because of a lack of resources to obtain other types of food?
names(df1)[77] <- "did_not_want_to_eat"

##How often?...255
names(df1)[78] <- "often_did_not_want"

## In the past four weeks, did you or any household member have to eat a smaller meal than you felt 
#you needed because there was not enough food?
names(df1)[79] <- "smaller_meal"

## How often?...257
names(df1)[80] <- "often_smaller"

### In the past four weeks, did you or any household member have to eat fewer meals in a day because 
#there was not enough food?
names(df1)[81] <- "fewer_meals"

## How often?...259
names(df1)[82] <- "often_fewer"

### In the past four weeks, was there ever no food to eat of any kind in your household because of lack of 
#resources to get food?
names(df1)[83] <- "ever_no_food"

##How often?...261
names(df1)[84] <- "often_no_food"

## In the past four weeks, did you or any household member go to sleep at night hungry because there 
#was not enough food?
names(df1)[85] <- "sleep_hungry"

## How often?...263
names(df1)[86] <- "often_sleep_hungry"

### In the past four weeks, did you or any household member go a whole day and night without eating anything 
#because there was not enough food?
names(df1)[87] <- "day_night_hungry"

### How often?...265
names(df1)[88] <- "often_day_night"

## remove header
df1$`Please explain that the following questions on recent food and drink consumption must be asked to an adult woman  (aged 15-49 years). Please ask the respondent to identify a woman corresponding to this criteria in the household. If there is no such woman in the household, please skip the following questions and go poverty proxies questions.` <- NULL

## [TO ENUMERATOR]\nWas a member of the household available and did they consent to the questions?
names(df1)[89] <- "member_hh_consent"

## Please indicate what you ate or drank yesterday from the time you woke up until you went to bed (Do not include food or drink taken elsewhere). Start with the first 
##food ou drink taken in the morning."
names(df1)[90] <- "ate_yesterday"

## As the respondent describes his or her meals, check off the food groups eaten below. \nIf a cooked dish is mentioned, ask for the list of ingredients.\nAt the end of the description, for each food group not mentioned, ask the person if 
#any food from that group was consumed
#df1$`As the respondent describes his or her meals, check off the food groups eaten below. If a cooked dish is mentioned, ask for the list of ingredients.At the end of the description, for each food group not mentioned, ask the person if any food from that group was consumed` <- NULL
names(df1)[91] <- "header"
df1$header <- NULL

## delete header
df1$`For the following questions, please return to interviewing the main respondent of this survey if necessary.` <- NULL
df1$`If the survey takes place at respondent homestead, observe the conditions of the housing unit and, if necessary, ask questions` <- NULL

##Specify Other:...290
names(df1)[109] <- "other_floor_type"

## Main material used in outer walls:
names(df1)[110] <- "outer_walls_material"

##Specify Other:...292
names(df1)[111] <- "other_wall_material"

### Specify Other:...294
names(df1)[113] <- "other_type_roof"

## Which of the following possessions and assets does your household own and how many?
table(df1$`Which of the following possessions and assets does your household own and how many?`)
## remove this since its a header
df1$`Which of the following possessions and assets does your household own and how many?` <- NULL

### 
names(df1)[115] <- "n_bicycles"

## motorbike
names(df1)[117] <- "n_motorbikes"

##cars
names(df1)[119] <- "n_cars"

## radio
names(df1)[121] <- "n_radio"

## TV
names(df1)[123] <- "n_TV"

## computer
names(df1)[125] <- "n_computer"

## refrigeerator
names(df1)[127] <- "n_refrigerator"

## mobile phone
names(df1)[129] <- "n_mobile_phone"

## solar panels
names(df1)[131] <- "n_solar_panels"

## How many close relatives (those who will readilly help you when needed) live in your community?
names(df1)[133] <- "close_relatives"

## "How many close friends (those who will readilly help you when needed) live in your community?
names(df1)[134] <- "close_friends"

## "Would you be okay for another in-depth interview regarding your agroecological practices in the following weeks?"
names(df1)[135] <- "further_interviewing"

## Can I ask why?
names(df1)[136] <- "no_further_why"

## [QUESTION TO ENUMERATOR]\n\nAny comment of the enumerator about the interview” (was the respondent open and frank, etc.)
names(df1)[137] <- "enumerator_comment"

### Have you ever attended education?
names(df1)[140] <- "education_status"

## highest level of education
names(df1)[141] <- "education_level"

## soil_fertility_methods_all_a
names(df1)[142] <-"sf_methods_all_a"

## soil_fertility_methods_all_b
names(df1)[143] <- "sf_methods_all_b"

## soil_fertility_methods_all_c
names(df1)[144] <- "sf_methods_all_c"

## pest_disease_methods_all_a
names(df1)[148] <- "pd_methods_all_a"

## pest_disease_methods_all_b
names(df1)[149] <- "pd_methods_all_b"

## pest_disease_methods_all_c
names(df1)[150] <- "pd_methods_all_c"

##
df1$`Please explain that the following questions on recent food and drink consumption must be asked to an adult woman  (aged 15-49 years). Please ask the respondent to identify a woman corresponding to this criteria in the household. If there is no such woman in the household, please switch the following questions and go poverty proxies questions.` <- NULL

names(df1)[154] <- "enumerator_comment_consent"

## preview the data
names(df1)
str(df1)
view(df1)

## change case of the variable names
library(janitor)
df1 <- df1 %>% clean_names()
str(df1)

## checking the missing values and the percentages
library(naniar)
df1 %>% miss_var_summary()
n_count_missing <- df1 %>% miss_var_summary()
view(n_count_missing)

## drop all variables with missing values above 50%
dfclean <- df1

## Remove columns with more than 50% NA
dfclean <- dfclean[, which(colMeans(!is.na(dfclean)) > 0.5)]
dfclean %>% miss_var_summary() %>% view()
