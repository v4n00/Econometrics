# Test exercises

-   [Test exercises](#test-exercises)
-   [Exercise 1 - ANOVA](#exercise-1---anova)
    -   [Requirement 1](#requirement-1)
    -   [Requirement 2](#requirement-2)
    -   [Requirement 3](#requirement-3)
    -   [Requirement 4](#requirement-4)
    -   [Requirement 5](#requirement-5)
-   [Exercise 2 - Simple Linear Regression](#exercise-2---simple-linear-regression)
    -   [Requirement 1](#requirement-1-1)
    -   [Requirement 2](#requirement-2-1)
    -   [Requirement 3](#requirement-3-1)
    -   [Requirement 4](#requirement-4-1)
    -   [Requirement 5](#requirement-5-1)
    -   [Requirement 6](#requirement-6)
    -   [Requirement 7](#requirement-7)
-   [Exercise 3 - Multiple Linear Regression](#exercise-3---multiple-linear-regression)
    -   [Requirement 1](#requirement-1-2)
    -   [Requirement 2](#requirement-2-2)
    -   [Requirement 3](#requirement-3-2)
    -   [Requirement 4](#requirement-4-2)
    -   [Requirement 5](#requirement-5-2)
-   [Exercise 4 - Multiple Regression Analysis](#exercise-4---multiple-regression-analysis)
    -   [Requirement 1](#requirement-1-3)
    -   [Requirement 2](#requirement-2-3)
-   [Exercise 5 - Multiple Linear Regression](#exercise-5---multiple-linear-regression)
    -   [Requirement 1](#requirement-1-4)
    -   [Requirement 2](#requirement-2-4)
-   [Exercise 6 - True or False?](#exercise-6---true-or-false)
-   [Exercise 7 - Classical Linear Model](#exercise-7---classical-linear-model)
-   [Exercise 8 - ANOVA MLR](#exercise-8---anova-mlr)
    -   [Requirement 1](#requirement-1-5)
    -   [Requirement 2](#requirement-2-5)
-   [Exercise 9 - Excel Output](#exercise-9---excel-output)
    -   [Requirement 1](#requirement-1-6)
    -   [Requirement 2](#requirement-2-6)
    -   [Requirement 3](#requirement-3-3)
    -   [Requirement 4](#requirement-4-3)

# Exercise 1 - ANOVA

A researcher studies if there is an effect of the number of sleeping hours on the number of errors reported in the case of a sample of 7 assistants in radiology.

The ANOVA Output is provided below:

| ANOVA             | df  | SS          |
| ----------------- | --- | ----------- |
| Explained/ression | 1   | 181.1287594 |
| Residual          | 5   | 50.58552632 |
| Total             | 6   | 231.7142857 |

## Requirement 1

What is the independent variable and what is the dependent variable?

-   The independent variable is the "number of sleeping hours".
-   The dependent variable is the "number of errors reported".

## Requirement 2

Using the variables names, write the simple linear regression model for a population.

$$\text{Number of errors reported} = \beta_0 + \beta_1 \times \text{Number of sleeping hours} + u$$

## Requirement 3

What $SS_{Total}$ stands for? What $SS_{Explained}$ stands for? What $SS_{Residual}$ stands for? What are their formulas?

-   $SS_{Total}$
    -   Sum of Squares Total, total variability in the dependent variable
    -   formula: $\sum (y_t - \bar y) ^2$
-   $SS_{Explained}$
    -   Sum of Squares Explained, amount of variation in the dependent variable that can be explained by the independent variable
    -   formula: $\sum (\hat y_t - \bar y) ^ 2$
-   $SS_{Residual}$
    -   Sum of Squares Residual, variation in the dependent variable that is not explained by the independent variable
    -   formula: $\sum (y_t - \hat y_t) ^ 2$

## Requirement 4

Compute R-squared using the ANOVA output. Interpret the result.

$$R ^2 = \dfrac{SS_{Explained}}{SS_{Total}} = \dfrac{181.1287594}{231.7142857} = 0.782 = 78.2\text{\%}$$

> This means that $78.2\text{\%}$ of the variability in the dependent variable (number of errors) is explained by the independent variable (number of sleeping hours) in the model.

## Requirement 5

Test the validity of the regression model using Fisher test ($F_{critical} (0.025, 1, 5) = 6.6$).

$$MS_{Explaiend} = \dfrac{SS_{Explained}}{k} = \dfrac{181.1287594}{1}= 181.12$$

$$MS_{Residual} = \dfrac{SS_{Residual}}{n-k-1} = \dfrac{50.58552632}{5} = 10.11$$

$$F = \dfrac{MS_{Explained}}{MS_{Residual}} = \dfrac{181.12}{10.11} = 17.90$$

$$17.9 > 6.6 \Leftrightarrow F > F_{critical} \Rightarrow \text{reject }H_0$$

> The model is **valid**.

# Exercise 2 - Simple Linear Regression

An economist analyses the effect of total assets on sales in a case of 7 large companies operating in the air transportation sector. It is decided to test if a simple linear regression would be an appropriate model. Data and the partial results are presented in the following table. The last line in the table gives you the totals for each column.

| $x$ Total Assets (mil. &euro;) | $y$ Sales (mil. &euro;) | $x_t y_t$ | $x_t ^ 2$ | $\hat y$ | $\hat u_t$ | $\hat u_t ^ 2$ | $(x_t - \bar x) ^2$ | $(y_t - \bar y) ^2$ | $(\hat y - \bar y) ^2$ |
| ------------------------------ | ----------------------- | --------- | --------- | -------- | ---------- | -------------- | ------------------- | ------------------- | ---------------------- |
| 35                             | 14                      | 490       | 1225      | 24.29638 | -10.2964   | 106.0154       | 293.8776            | 509.4694            | 150.6769               |
| 23                             | 22                      | 506       | 529       | 15.70384 | 6.296161   | 39.64164       | 849.3061            | 212.3265            | 435.4563               |
| 43                             | 31                      | 1333      | 1849      | 30.02473 | 0.975266   | 0.951144       | 83.59184            | 31.04082            | 42.85921               |
| 67                             | 35                      | 2345      | 4489      | 47.20981 | -12.2098   | 149.0794       | 220.7347            | 2.469388            | 113.1751               |
| 86                             | 67                      | 5762      | 7396      | 60.81466 | 6.185343   | 38.25846       | 1146.306            | 925.898             | 587.7341               |
| 51                             | 45                      | 2295      | 2601      | 35.75309 | 9.246908   | 85.50531       | 1.306122            | 71.04082            | 0.669675               |
| 60                             | 42                      | 2520      | 3600      | 42.19749 | -0.19749   | 0.039004       | 61.73469            | 29.46939            | 31.65262               |
| 365                            | 256                     | 15251     | 21689     | 256      | -1.2E-5    | 419.4903       | 2656.857            | 1781.714            | 1362.224               |

## Requirement 1

Compute the regression coefficients of the model.

$$\bar x = \dfrac{365}{7} = 52.14$$

$$\bar y = \dfrac{256}{7} = 36.57$$

Given the table we can compute $\hat \beta$ as such:  
$$\hat \beta_1 = \dfrac{n \cdot \sum (x_t y_t) - \sum (x) \cdot \sum (y)}{n \cdot \sum(x ^2) - \sum (x)^2} = \dfrac{7 \cdot 15251 - 365 \cdot 256}{7 \cdot 21689 - 365 ^ 2} = 0.716$$

$$\hat \beta_0 = \bar y - \beta_1 \cdot \bar x = 36.57 - 0.716 \cdot 52.14 = -0.765$$

## Requirement 2

Write the regression equation with the interpretation of the coefficients.

$$\hat y = -0.765 + 0.716x$$

> When a company has no assets, the model predicts its sales to be approximately $-0.765$ million &euro;
>
> For each additional million &euro; in total assets, the sales are predicted to increase by approximately $0.716$ million &euro;

## Requirement 3

Compute the standard errors of the model estimators.

$$\sigma_u = \sqrt{\sigma_u ^ 2} = \sqrt{\dfrac{\sum u_t ^ 2}{n - 2}} = \sqrt{\dfrac{419.4903}{7-2}} = \sqrt{83.89} = 9.15$$

$$SE(\hat \beta_1) = \dfrac{\sigma_u}{ \sqrt{\sum (x_t - \bar x) ^2}} = \dfrac{9.15}{\sqrt{2656.857}} = 0.178$$

$$SE(\hat \beta_0) = \sigma_u \cdot \sqrt{\left(\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum (x_t - \bar x) ^ 2}\right)} = 9.15 \sqrt{\dfrac{1}{7} + \dfrac{52.14 ^2}{2656.857}} = 9.88$$

## Requirement 4

What is the standard error of the model?

$$\sigma_u = \sqrt{\sigma_u ^ 2} = \sqrt{\dfrac{\sum u_t ^ 2}{n - 2}} = \sqrt{\dfrac{419.4903}{7-2}} = \sqrt{83.89} = 9.15$$

## Requirement 5

Test the statistical significance of the regression coefficient for a significance level of $5\text{\%}$ ($t_{critical} = 2.57$).

$$t_{calc} (\beta_1) = \dfrac{\hat \beta_1}{SE(\hat \beta_1)} = \dfrac{0.716}{0.178} = 4.02$$

$$\lvert 4.02 \rvert > 2.57 \Leftrightarrow \lvert t_{calc} \rvert > t_{critical} \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{Total assets}$ variable is statistically significant. This suggests that the amount of total assets has a statistically significant effect on sales.

## Requirement 6

Compute the confidence interval for the regression coefficient.

$$\beta_1 \in (\hat \beta_1 - SE(\beta_1) \cdot t_{critical}; \hat \beta_1 + SE(\beta_1) \cdot t_{critical})$$

$$\beta_1 \in (0.716 - 0.178 \cdot 2.57; 0.716 + 0.178 \cdot 2.57)$$

$$ \beta_1 \in (0.25;\ 1.17) $$

## Requirement 7

Determine and interpret the value of the determination coefficient.

$$SS_{Explained} = \sum(\hat y_t - \bar y)^2 = 1362.224$$

$$SS_{Total} = \sum(y_i - \bar y)^2 = 1781.714$$

$$R ^2 = \dfrac{SS_{Explained}}{SS_{Total}} = \dfrac{1362.224}{1781.714} = 0.7645 = 76.45\text{\%}$$

> This means that $76.5\text{\%}$ of the variability in the dependent variable (sales) is explained by the independent variable (total assets) in the linear regression model.

# Exercise 3 - Multiple Linear Regression

For 58 European regions, the following model explained the Crime rate.

|                                    | Coefficients | Standard Error | P-value  |
| ---------------------------------- | ------------ | -------------- | -------- |
| Intercept                          | -28.0595     | 10.89886633    | 0.014564 |
| ln(Social protection expenditures) | 1.927223     | 0.64574707     | 0.005231 |
| Monthly income                     | 0.006031     | 0.002510804    | 0.021905 |
| School drop-out rate               | 0.475808     | 0.351775505    | 0.185115 |

## Requirement 1

Write the regression equation.

$$\text{Crime rate} = −28.0595 + 1.927223 \times \ln{(\text{Social protection expenditures})} + \\ 0.006031 \times \text{Monthly income} + 0.475808 \times \text{School drop-out rate}$$

## Requirement 2

Which variable(s) is/are statistically significant at $1\text{\%}$ significance level. List their names.

Only the first variable, $\ln{(\text{Social protection expenditures})}$ is **statistically significant**, because $0.005 < 0.01 \Leftrightarrow p_{calculated} < \alpha$

## Requirement 3

Which variable(s) is/are statistically significant at $5\text{\%}$ significance level?

The first 2 variables, $\ln{(\text{Social protection expenditures})}$ and $\text{Monthly income}$ are **statistically significant**, because $0.005 < 0.05 \Leftrightarrow p_{calculated} < \alpha$ and $0.021 < 0.05 \Leftrightarrow p_{calculated} < \alpha$

## Requirement 4

State the null hypothesis that monthly income has no ceteris paribus effect on the crime rate.

$$
\begin{cases}
H_0 : \beta_2 = 0 \\
H_1 : \beta_2 \not = 0
\end{cases}
$$

## Requirement 5

Test the hypothesis stated above at the $5\text{\%}$ significance level.

$$t_{calculated} = \dfrac{\hat \beta_2}{SE(\hat \beta_2)} = \dfrac{0.006}{0.0025} = 2.4$$

$$t_{critical} = t_{\alpha/2;\ n - k - 1} = t_{0.05/2;\ 58 - 3 - 1} = 2.00$$

$$\lvert 2.4 \rvert > 2 \Leftrightarrow \lvert t_{calc} \rvert > t_{critical} \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{Monthly income}$ variable is statistically significant. This suggests that monthly income has a statistically significant effect on crime rate.

# Exercise 4 - Multiple Regression Analysis

For a model with two exogenous variables and intercept, the following results are known:

$$
X ^ T X =
\begin{pmatrix}
    32 & 281 & 2029 \\
    & 6473 & 39397 \\
    & & 283816
\end{pmatrix}
$$

$$
(X ^ T X)^-1 =
\begin{pmatrix}
    0.061 & 0.0005 & 0.0005 \\
    & 0.001 & -0.0014 \\
    & & 0.00002
\end{pmatrix}
$$

$$
X ^ T Y =
\begin{pmatrix}
    538 \\
    11269 \\
    74099
\end{pmatrix}
$$

## Requirement 1

Estimate the coefficients of the regression model.

$$\hat \beta = (X^T X) ^{-1} \cdot X^T Y$$

$$
\hat \beta =
\begin{pmatrix}
    0.061 & 0.0005 & 0.0005 \\
    0.0005 & 0.001 & -0.0014 \\
    0.0005 & -0.0014 & 0.00002
\end{pmatrix} \cdot
\begin{pmatrix}
    538 \\
    11269 \\
    74099
\end{pmatrix} =
\begin{pmatrix}
    75.502 \\
    -92.2006 \\
    -14.02562
\end{pmatrix}
$$

## Requirement 2

Write the regression equation with the interpretation of the coefficients.

$$\hat y = 75.502 − 92.2006 \times x_1 − 14.02562 \times x_2$$

> When both $x_1$ and $x_2$ are zero, the model predicts the baseline level of $y$ will be $75.502$ units.
>
> For each unit increase in $x_1$, the dependent variable $y$ is expected to decrease by $92.2$ units.
>
> For each unit increase in $x_2$, the dependent variable $y$ is expected to decrease by $14.02$ units.

# Exercise 5 - Multiple Linear Regression

Using a sample of $706$ respondents, we estimated the following regression equation that explains the individuals’ sleeping behaviour by gender:

$$sleep=\underset{(235.11)}{3840.83} - \underset{(.018)}{0.163} \times totwrk - \underset{(5.86)}{11.71} \times educ - \\ \underset{(11.21)}{8.70} \times age + \underset{(.134)}{0.128} \times age^2 + \underset{(34.33)}{87.75} \times male$$

$$R^2 = 0.123$$

The variable **sleep** is total minutes per week spent sleeping at night, **totwrk** is total weekly minutes spent working, **educ** and **age** are measured in years, and **male** is a gender dummy. Standard errors are provided within parenthesis.

## Requirement 1

All other factors being equal, is there evidence that men sleep more than women? How strong is the evidence?

$$t_{calc} = \dfrac{\beta_6}{SE(\beta_6)} = \dfrac{87.75}{34.33} = 2.56$$

$$t_{critic} = t_{\alpha/2;\ n - k - 1} = t_{0.05;\ 701} = 1.96$$

$$\lvert t_{calc} \rvert > t_{critic} \Leftrightarrow \lvert 2.56 \rvert > 1.96 \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{male}$ variable is statistically significant. This suggests that there is significant evidence that **men sleep more than women**.

## Requirement 2

Is there a statistically significant trade-off between working and sleeping? What is the estimated trade-off?

$$t_{calc} = \dfrac{\beta_1}{SE(\beta_1)} = \dfrac{-0.163}{0.018} = -9.05$$

$$t_{critic} = t_{\alpha/2;\ n - k - 1} = t_{0.05;\ 701} = 1.96$$

$$\lvert-9.05\rvert > 1.96 \Leftrightarrow \lvert t_{calc} \rvert > t_{critic} \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{totwrk}$ variable is statistically significant. This suggests that total work has a statistically significant effect on sleep. Also, because the coefficient is negative, that means that it is a **trade-off**.

# Exercise 6 - True or False?

We say that an estimator is unbiased if it has the smallest variance among all other estimators. Is this statement true?

-   [ ] True
-   [x] False

An estimator is said to be unbiased if its expected value is equal to the true parameter value it estimates, not because it has the smallest variance.

# Exercise 7 - Classical Linear Model

Among the statements below, which one is NOT under the Classical Linear Model assumptions?

-   [ ] the error term u is normally distributed.
-   [ ] the error term u is independent of the explanatory variables.
-   [ ] the error term u has mean 0.
-   [x] the variance of the error term u is a function of the explanatory variables.

# Exercise 8 - ANOVA MLR

The following results were obtained after estimating a multiple linear regression
model with two independent variables:

| ANOVA      | df  | SS    | MS   | F     |
| ---------- | --- | ----- | ---- | ----- |
| Regression | ?   | 302.1 | ?    | 47.95 |
| Residual   | ?   | ?     | 3.15 |       |
| Total      | 68  |       |      |       |

$F_{critic} = 3.14$

## Requirement 1

Find and interpret the R Square.

$$\text{"Two independent variables"} \Rightarrow k = 2$$

$$df_{Explained} = k = 2$$

$$df_{Total} = n - 1 = 68 \Rightarrow n = 69$$

$$df_{Residual} = n - k - 1 = 69 - 2 - 1 = 66$$

$$MS_{Residual} = \dfrac{SS_{Residual}}{df_{Residual}} \Rightarrow 3.15 = \dfrac{SS_{Residual}}{66} \\ \Rightarrow SS_{Residual} = 3.15 \cdot 66 = 207.9$$

$$SS_{Total} = SS_{Explained} + SS_{Residual} = 302.1 + 207.9 = 510$$

$$MS_{Explained} = \dfrac{SS_{Explained}}{df_{Explained}} = \dfrac{302.1}{2} = 151.05$$

| ANOVA                  | df  | SS    | MS     | F     |
| ---------------------- | --- | ----- | ------ | ----- |
| Regression (Explained) | 2   | 302.1 | 151.05 | 47.95 |
| Residual               | 66  | 207.9 | 3.15   |       |
| Total                  | 68  | 510   |        |       |

$$R^2 = \dfrac{SS_{Explained}}{SS_{Total}} = \dfrac{302.1}{510} = 0.5923 = 59.23\text{\%}$$

> This means that $59.23\text{\%}$ of the variability in the dependent variable is explained by the 2 independent variables in the model.

## Requirement 2

Test if the regression model is statistically significant.

$$47.95 > 3.14 \Leftrightarrow F > F_{critical} \Rightarrow \text{reject }H_0$$

> The model is **statistically significant**.

# Exercise 9 - Excel Output

The results after estimating a multiple linear regression model for unemployment rate in 19 EU countries are:

| Regression Statistics |     |
| --------------------- | --- |
| Multiple R            | ?   |
| R Square              | ?   |
| Adjusted R Square 0.  | 568 |
| Standard Error 3.     | 098 |
| Observations          | 19  |

| ANOVA                  | df  | SS  | MS  | F   |
| ---------------------- | --- | --- | --- | --- |
| Regression (Explained) | ?   | ?   | ?   | ?   |
| Residual               | ?   | ?   | ?   |     |
| Total                  | ?   | ?   |     |     |

|                                                       | Coefficients | Standard Error | t Stat | Lower $95\text{\%}$ | Upper $95\text{\%}$ |
| ----------------------------------------------------- | ------------ | -------------- | ------ | ------------------- | ------------------- |
| Intercept                                             | 43.98        | 9.09           | ?      | 24.61               | 63.35               |
| Average Income (hundreds Euro)                        | ?            | 3.13           | ?      | -18.18              | -4.83               |
| Number of insolvent companies (hundreds of companies) | ?            | ?              | 1.95   | -0.05               | 1.18                |
| Share of persons with tertiary education(%)           | ?            | 0.09           | ?      | -0.40               | ?                   |

$F_{critic} = 3.287;\ t_{critic} = 2.131$

## Requirement 1

Fill in the table.

For **Regression statistics**:

$$\text{Adj. } R^2 = 1-(1-R^2)\cdot \dfrac{n-1}{n-k-1} \\ \Rightarrow R^2 = \dfrac{\text{Adj. } R^2 - 1}{\dfrac{n-1}{n-k-1}} + 1 = \dfrac{0.568-1}{\dfrac{18}{15}} + 1 = 0.64$$

$$ \text{Multiple } R = \sqrt{R^2} = 0.8$$

For **ANOVA**:

$$\text{Observations} = 19 \Rightarrow n = 19$$

$$\text{Number of independent variables} = 3 \Rightarrow k = 3$$

$$df_{Explained} = k = 3$$

$$df_{Residual} = n - k - 1 = 19 - 3 - 1 = 15$$

$$df_{Total} = n - 1 = 19 - 1 = 18$$

$$\sigma = 3.098 = \sqrt{MS_{Residual}} \Rightarrow MS_{Residual} = 3.098^2 = 9.59$$

$$SS_{Residual} = MS_{Residual} * df_{Residual} = 9.59 * 15 \Rightarrow SS_{Residual} = 143.85$$

$$R ^2 = \dfrac{SS_{Explained}}{SS_{Total}} \Rightarrow R^2 = \dfrac{SS_{Total} - SS_{Residual}}{SS_{Total}} = 1 - \dfrac{SS_{Residual}}{SS_{Total}} \\\\ \Rightarrow 0.64 = 1 - \dfrac{143.85}{SS_{Total}} \Rightarrow SS_{Total} = \dfrac{143.85}{1-0.64} \Rightarrow SS_{Total} = 399.58$$

$$SS_{Total} = SS_{Explained} + SS_{Residual} \Rightarrow 399.58 = SS_{Explained} + 143.85 \\ \Rightarrow SS_{Explained} = 399.58 - 143.85 = 255.73$$

$$MS_{Explained} = \dfrac{SS_{Explained}}{k} = \dfrac{255.73}{3} = 85.24$$

$$F_{calculated} = \dfrac{MS_{Explained}}{MS_{Residual}} = \dfrac{85.24}{9.59} = 8.88$$

For $\text{Intercept}$:

$$t_{stat} = \dfrac{\hat \beta_0}{SE(\hat \beta_0)} = \dfrac{43.98}{9.09} = 4.83$$

For $\text{Average Income}$:

$$\beta_1 \in (-18.18, -4.83) \Leftrightarrow \beta_1 \in (\hat \beta_1 \pm t_{crit} \cdot SE(\hat \beta_1))$$

$$-4.83 + (-18.18) = \hat \beta_1 - t_{crit} \cdot SE(\hat \beta_1) + \hat \beta_1 + t_{crit} \cdot SE(\hat \beta_1) \\ \Rightarrow -23.01 = 2 \hat \beta_1 \Rightarrow \hat \beta_1 = \dfrac{-23.01}{2} = -11.5$$

$$t_{stat}(\hat \beta_1) = \dfrac{\hat \beta_1}{SE(\hat \beta_1)} = \dfrac{-11.5}{3.13} = -3.67$$

---

$$\beta_3 \in (-0.40, ?) \Leftrightarrow \beta_3 \in (\hat \beta_3 \pm t_{crit} \cdot SE(\hat \beta_3))$$

$$-0.40 = \hat \beta_3 - 2.13 \cdot 0.09 \Rightarrow \hat \beta_3 = -0.20$$

$$t_{stat}(\hat \beta_3) = \dfrac{\hat \beta_3}{SE(\hat \beta_3)} = \dfrac{-0.20}{0.09} = -2.22$$

$$\beta_3 \in(-0.40, \text{Upper 95\text{\%}}), \text{Upper 95\text{\%}} = \hat \beta_3 + t_{critic} \cdot SE(\hat \beta_3) = -0.20 + 2.13 \cdot 0.09 = -0.008$$

---

$$t\_{stat}(\hat \beta_2) = 1.95 = \dfrac{\hat \beta_2}{SE(\hat \beta_2)} \Rightarrow SE(\hat \beta_2) = \dfrac{\hat \beta_2}{1.95}$$

$$\text{Upper 95\text{\%}} = 1.18 = \hat \beta_2 + t_{crit} \cdot SE(\hat \beta_2) \\ \Rightarrow 1.18 = \hat \beta_2 + 2.13 \cdot \dfrac{\hat \beta_2}{1.95} \Rightarrow 1.18 = \hat \beta_2 (1 + \dfrac{2.13}{1.95}) \\ \Rightarrow \hat \beta_2 = \dfrac{1.18}{1 + \dfrac{2.13}{1.95}} = 0.56$$

$$SE(\hat \beta_2) = \dfrac{0.56}{1.95} = 0.28$$

| Regression Statistics |       |
| --------------------- | ----- |
| Multiple R            | 0.8   |
| R Square              | 0.64  |
| Adjusted R Square     | 0.568 |
| Standard Error        | 3.098 |
| Observations          | 19    |

| ANOVA                  | df  | SS     | MS    | F    |
| ---------------------- | --- | ------ | ----- | ---- |
| Regression (Explained) | 3   | 255.73 | 85.24 | 8.88 |
| Residual               | 15  | 143.85 | 9.59  |      |
| Total                  | 18  | 399.58 |       |      |

|                                                       | Coefficients | Standard Error | t Stat | Lower $95\text{\%}$ | Upper $95\text{\%}$ |
| ----------------------------------------------------- | ------------ | -------------- | ------ | ------------------- | ------------------- |
| Intercept                                             | 43.98        | 9.09           | 4.83   | 24.61               | 63.35               |
| Average Income (hundreds Euro)                        | -11.5        | -3.67          | -5.8   | -18.18              | -4.83               |
| Number of insolvent companies (hundreds of companies) | 0.56         | 0.28           | 1.95   | -0.05               | 1.18                |
| Share of persons with tertiary education(%)           | -0.20        | 0.09           | -2.22  | -0.40               | -0.008              |

## Requirement 2

Is the regression model statistically significant?

$$8.88 > 3.28 \Leftrightarrow F > F_{critical} \Rightarrow \text{reject }H_0$$

> The model is **statistically significant**.

## Requirement 3

Find and interpret the linear regression parameters.

$$
\begin{cases}
    \hat \beta_0 = 43.98 \\
    \hat \beta_1 = -11.5 \\
    \hat \beta_2 = 0.56 \\
    \hat \beta_3 = -0.20
\end{cases}
$$

> When both $x_1$, $x_2$ and $x_3$ are zero, the model predicts the baseline level of $y$ will be $43.98$ units.
>
> For each unit increase in $x_1$, the dependent variable $y$ is expected to decrease by $11.5$ units.
>
> For each unit increase in $x_2$, the dependent variable $y$ is expected to increase by $0.56$ units.
>
> For each unit increase in $x_3$, the dependent variable $y$ is expected to decrease by $0.20$ units.

## Requirement 4

Test if the regression coefficients are statistically significant.

$$\lvert -5.8 \rvert > 2.13 \Leftrightarrow \lvert t_{calc}(\beta_1) \rvert > t_{critical} \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{Average Income}$ variable is statistically significant. This suggests that average income has a statistically significant effect on crime rate.

$$\lvert 1.95 \rvert < 2.13 \Leftrightarrow \lvert t_{calc}(\beta_0) \rvert < t_{critical} \Rightarrow \text{reject } H_1$$

> The coefficient for the $\text{Number of insolvent companies }$ variable is statistically significant. This suggests that insolvent companies don't have a statistically significant effect on crime rate.

$$\lvert -2.22 \rvert > 2.13 \Leftrightarrow \lvert t_{calc}(\beta_3) \rvert > t_{critical} \Rightarrow \text{reject } H_0$$

> The coefficient for the $\text{Share of persons with tertiary education}$ variable is statistically significant. This suggests that the education level has a statistically significant effect on crime rate.
