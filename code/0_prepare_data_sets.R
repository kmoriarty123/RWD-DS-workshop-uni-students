# Author: Kathleen Moriarty
# Course: Real-World Data (395-0102-00L) Autumn 2022
# Location: D-HEST, ETH Zurich
# Date: 22 November 2022
# Title: Explore CMS Synthetic Claims Data: Prepare data sets
# Desc: Import and combine all datasets

##### Set up environment ##### 

rm(list=ls())
setwd("C:/Users/moriark1/Desktop/uni_outreach")

# Packages
library(dplyr)
library(data.table) # read .csv
library(readr)
library(bit64) 
library(stringr)
library(ggplot2)
library(tidyr) # melting
library(lubridate)
library(finalfit) #missingness 

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

# rx datasets
#drug_data1 <- fread("data/DE1_0_2008_to_2010_Prescription_Drug_Events_Sample_1.csv") 

# carrier datasets
#carrier1_data1 <- fread("data/DE1_0_2008_to_2010_Carrier_Claims_Sample_1A.csv") 
#carrier2_data1 <- fread("data/DE1_0_2008_to_2010_Carrier_Claims_Sample_1B.csv") 
