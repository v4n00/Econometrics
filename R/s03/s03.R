c=cor(Data$`Price(X)`, Data$`Quantity(Y)`)
c
regr=lm(Data$`Quantity(Y)`~Data$`Price(X)`)
regr
summary(regr)
