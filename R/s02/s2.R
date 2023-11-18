M=cor(Data$'Wages and salaries', Data$'Fishing fleet')
M
mydata=data.frame(Data$'Wages and salaries', Data$`Fishing fleet`, Data$`Poverty rate`)
M1=cor(mydata)
M1
library(broom)
M1=cor(mydata)
library(corrplot)
corrplot(M1, method="color", type="upper")
library(ggcorrplot)
ggcorrplot(M,
           hc.order = TRUE,
           type = "lower",
           lab = TRUE)
