# Load packages
library(tidyverse)
library(NHANES)

# Looking at data
glimpse(NHANES)

# Selecting coloumns
select(NHANES, Age)

select(NHANES, Age, Weight, BMI)

select(NHANES, -HeadCirc)

select(NHANES, starts_with("BP"))

select(NHANES, ends_with("Day"))

select(NHANES, contains("Age"))


# Creating

nhanes_small <- select(
  NHANES, Age, Gender, BMI, Diabetes,
  PhysActive, BPSysAve, BPDiaAve, Education
)

# Renaming coloumns

nhanes_small <- rename_with(
  nhanes_small,
  snakecase::to_snake_case
)

# Renaming specific coloumns

nhanes_small <- rename(nhanes_small, sex = gender)

# Tring at the pipe cmd + shift + M
colnames(nhanes_small)

nhanes_small %>%
  colnames()

nhanes_small %>%
  select(phys_active) %>%
  rename(physcically_active = phys_active)

nhanes_small %>%
  select(bp_sys_ave, education)

nhanes_small %>%
  rename(
    bp_sys = bp_sys_ave,
    bp_dia = bp_dia_ave
  )

select(nhanes_small, bmi, contains("age"))

nhanes_small %>%
  select(bmi, contains("age"))


blood_pressure <- select(nhanes_small, starts_with("bp_"))
rename(blood_pressure, bp_systolic = bp_sys_ave)

nhanes_small %>%
  select(starts_with("bp_")) %>%
  rename(bp_systolic = bp_sys_ave)




