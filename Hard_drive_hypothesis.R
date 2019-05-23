#1
getwd()
data = as.matrix(read.csv("C:/Users/Allbert/Documents/harddrivedata.csv"))
plot(data, type = "p", xlab = "Capacity", ylab = "Price")
# The data appears to be linearly related.

#2
 x = as.matrix(data[,1])
 y = as.matrix(data[,2])
 plot(x, y)
 fit = lm(y ~ x)
 abline(fit)

#3
# In this context, B1 shows that hard drive capacity and 
  price generally have a positive correlation.

#4
 The intercept B0 is 18.617.

#5
 Y = 103.93 * x + 18.617

#6
 Y_observed = as.matrix(round(y))
 Y_fitted = as.matrix(round(fit$fitted[c(1, 2, 3, 4, 5, 6, 7)]))
 Residuals = as.matrix(Y_observed - Y_fitted)

## [Fitted]
##1   27
##2   31
##3   45
##4   52
##5  123
##6  226
##7  434

##  [Residuals]
##1    3
##2    4
##3    5
##4   18
##5  -24
##6  -21
##7   15

#7
  Y = 103.93 * 3.0 + 18.617
  Y
  
# Prediction [1] 330.407

#8
# This is a good buy! I would save $30.407

#9 
# Hypothesis: H_0 - There is no linear relationship between Price and Capacity.
#		  H_1 - There is a linear relationship between Price and Capacity.

# P-Value: 

# Conclusion: Since P = 5.08e-06 < 0.05, reject the null hypothesis. There 
# is a linear relationship between Price and Capacity.

#10
 
# 

#11

# Code: cor(x, y, method = "pearson")

# Correlation Value: 0.9941172

# Relationship: Since the correlation value is  0.7 < r < 1, there is a strong 
# positive correlation

# 95% Confidence Interval:  confint(fit, level = 0.90)
##                    5 %      95 %
## (Intercept)  0.8655532  36.36889
## x           93.7252330 114.13306




