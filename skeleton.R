# Skeleton code of Walmart Trip Type Classification.
# author: Daniel Minsu Kim

#################### Project Directory Setup ########################
library(RCurl)
library(XML)
library(geosphere)
library(rattle)
library(party)
library(rpart.plot)
library(caret)
library(RColorBrewer)
library(dplyr)
library(rpart)
library(doMC)
library(lubridate)
library(ggplot2)
library(ggmap)
# set up project folder, create necessary subdirectories
dir.create("code")
dir.create("rawdata")
dir.create("data")
dir.create("resources")
dir.create("report")
dir.create("images")
# move files to corresponding folders
file.rename(from = "preprocess.R", to = "code/preprocess.R")
file.rename(from = "utils.R", to = "code/utils.R")



#################### Load Utility and Plotting Functions & Clean Data ##########################
# load utility functions and clean raw data
source("code/utils.R")
source("code/preprocess.R")
source("code/submission.R")