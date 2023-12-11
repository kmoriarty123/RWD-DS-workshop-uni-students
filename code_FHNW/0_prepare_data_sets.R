# Author: Kathleen Moriarty
# Course: Introducation to Data Science and RWD
# Location: Roche Rotkreuz
# Date: 30 March 2023
# Title: Explore CMS Synthetic Claims Data: Prepare data sets
# Desc: Import all datasets

##### Set up environment ##### 

# Clear the environment
rm(list=ls())

# Change the below directory to match your working directory
# Within the working directory, you will need to have a folder titled 'data' where you store the data files
setwd("C:/Users/moriark1/Desktop/uni_outreach")

# Packages
library(bit64) # provides 64bit (signed) integers
library(data.table) # read .csv
library(dplyr)
library(finalfit) # missingness 
library(ggplot2) 
library(lubridate) # work with dates
#library(readr) 
library(stringr) # string manipulation
library(tidyr) # melting

##### Read in all the files ##### 

# Data
# https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF
# downloaded 04.Nov.2022

# inpatient datasets
ip_claims1 <- fread("data/DE1_0_2008_to_2010_Inpatient_Claims_Sample_1.csv") 

# outpatient datasets
op_claims1  <- fread("data/DE1_0_2008_to_2010_Outpatient_Claims_Sample_1.csv")

# member datasets
member_20081 <- fread("data/DE1_0_2008_Beneficiary_Summary_File_Sample_1.csv") 
member_20091 <- fread("data/DE1_0_2009_Beneficiary_Summary_File_Sample_1.csv") 
member_20101 <- fread("data/DE1_0_2010_Beneficiary_Summary_File_Sample_1.csv") 

# rx datasets - excluded but can be added for more interesting exploration
#drug_data1 <- fread("data/DE1_0_2008_to_2010_Prescription_Drug_Events_Sample_1.csv") 

# carrier datasets - excluded but can be added for more interesting exploration
#carrier1_data1 <- fread("data/DE1_0_2008_to_2010_Carrier_Claims_Sample_1A.csv") 
#carrier2_data1 <- fread("data/DE1_0_2008_to_2010_Carrier_Claims_Sample_1B.csv") 
