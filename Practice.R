install.packages("ggplot2")

pf <- read.csv("pseudo_facebook.tsv", sep = '\t')

dim(pf)
install.packages("gridBase_0.4-7")
library (ggplot2)
library(gridExtra)
p1 = qplot(x= friend_count,data = pf)
p2 = qplot(x = log10(friend_count+1), data = pf)
p3 = qplot(x = sqrt(friend_count), data = pf)
grid.arrange(p1,p2,p3,ncol = 1)

, binwidth = 50) +
scale_x_continuous(limits = c(0, 5000), breaks = seq(0, 5000, 100)) +
  facet_wrap (~gender)
table(pf$gender)
by(pf$friend_count,pf$gender,summary)

qplot(x = age, data = pf, binwidth = 1,
      color = I('#FFFFFF'), fill = I('#00BCD4')) +
  scale_x_continuous(limits = c(10,100), breaks = seq(10,100,10))
