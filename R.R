library("ggpubr")
#Load data - in RStudio working directory should be set to location of file.
data <- read.csv("..\\ADS-Loneliness\\master_df.csv")


#Omit NAs 
lonely = data$lonely_avg
FSM    = data$FSM.Eligible..
both = data.frame(lonely,FSM)
both = na.omit(both)
lonely = both$lonely
FSM = both$FSM

#Test correlation 
cor.test(FSM,lonely)


