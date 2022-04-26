library("ggpubr")
#Load data - in RStudio working directory should be set to location of file.
setwd("~/ADS/ADS-Loneliness")
data <- read.csv("..\\ADS-Loneliness\\master_df.csv")



lonely = data$lonely_avg
for (i in 3:ncol(data))
{
  print(paste("TESTING: " , toString(colnames(data)[i])))
  var = data[,i]
  both = data.frame(lonely,var)
  both = na.omit(both)
  print(cor.test(both$lonely,both$var))
}