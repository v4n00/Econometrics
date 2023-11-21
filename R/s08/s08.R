# model without dummy
regr=lm(Sales~NoSellers+CommercialArea, data=MLR_Assumption_and_Dummy)
summary(regr)
vif(regr)
bptest(regr)
durbinWatsonTest(regr)
shapiro.test(regr$residuals)

# model with dummy
regrdum=lm(Sales~NoSellers+CommercialArea+ShoppingCenter, data=MLR_Assumption_and_Dummy)
summary(regrdum)
vif(regrdu)
bptest(regrdum)
durbinWatsonTest(regrdum)
shapiro.test(regrdum$residuals)