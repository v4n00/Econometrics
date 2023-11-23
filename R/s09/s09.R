#model with dummy
regrdum=lm(Sales~NoSellers+CommercialArea+ShoppingCenter,data=MLR_Assumption_and_Dummy)
summary(regrdum)
car::vif(regrdum)

# auxilliary regressions

RSq1=lm(NoSellers~CommercialArea+ShoppingCenter, 
         data=MLR_Assumption_and_Dummy)
summary(RSq1)

RSq2=lm(CommercialArea~NoSellers+ShoppingCenter, 
        data=MLR_Assumption_and_Dummy)
summary(RSq2)

RSq3=lm(ShoppingCenter~NoSellers+CommercialArea, 
        data=MLR_Assumption_and_Dummy)
summary(RSq3)
