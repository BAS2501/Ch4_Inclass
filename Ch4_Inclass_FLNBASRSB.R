# read wine.csv file
wine.df <- read.csv("wine.csv", header = TRUE)

# run Principal Componets Analysis on all the attributes
# DO NOT NORMALIZE the attributes
pcs <- prcomp(na.omit(wine.df[,-c(1)]))

# Display the summary of the components 
summary(pcs)

#display the contribution of each attribute using the $rot 
# display only the first 5 components
pcs <- prcomp(na.omit(wine.df[,-c(1)]))
pcs$rot[,1:5]

# with the results above, answer the following questions
# 1. How many components would you choose to reach at least 80% contribution?
# 2. Why is PC1 much greater than that of any other component?
## To reach at least 80% you only need to choose the first component. 
## PC1 has a high proportion of variance, making the cumulative proportion high and the remaining 
## variances lower. 

# run Principal Components Analysis on all the attributes
# make sure to NORMALIZE the attributes
pcs.cor <- prcomp(na.omit(wine.df[,-c(1)]), scale. = T)

# Display the summary of the components 
summary(pcs.cor)

#display the contribution of each attribute using the $rot 
# display only the first 5 components
pcs.cor$rot[,1:5]

# with the results above, answer the following questions
# 1. How many components would you choose to reach at least 80% contribution?
# 2. What attributes contribute the most to PC1?
# 3. Why it is important to normalize data?
## To reach 80% you need to choose at least 5 components.
## Nonflavonoid_phenols, total_phenols, flavanoids, proanthocyanins, OD280_OD315, proline
## It is important to work with data on the same scale so that when comparing them, 
## you have an accurate comparison that is easier to interpret. 
