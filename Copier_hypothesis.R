#1.
	One-Way-ANOVA
#2.

		Analysis of Variance Table

Response: Copiers
          Df Sum Sq Mean Sq F value    Pr(>F)    
minutes    1 325.97  325.97  968.66 < 2.2e-16 ***
Residuals 43  14.47    0.34                      
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

	Copier = read.csv("C:/Users/Allbert/Documents/copier.csv")
	minutes = as.matrix(Copier[,1])
	Copiers = as.matrix(Copier[,2])
	SLR = lm(Copiers~minutes)
	anova(SLR)
#3.
Hypothesis: H0: mu0 == mu1
		H1: mu0 =/= mu1
Value test statistic = 968.66
P-value = 2.2e-16
Conclusion: Fail to reject the null hypothesis. There is a linear correlation 
		between the minutes and the number of copiers. 

#4.
	Terminal = read.csv("C:/Users/Allbert/Documents/Terminal.csv")
	aggregate(hours ~ location*week, data = Terminal, mean)


