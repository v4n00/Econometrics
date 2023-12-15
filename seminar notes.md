# Econometrics

-   [Econometrics](#econometrics)
-   [The dataset](#the-dataset)
-   [Simple Linear Regression](#simple-linear-regression)
    -   [Hypothesis testing](#hypothesis-testing)
        -   [1. Testing the significance with confidence intervals](#1-testing-the-significance-with-confidence-intervals)
        -   [2. Testing the significance using a t-test](#2-testing-the-significance-using-a-t-test)
-   [ANOVA](#anova)
    -   [Analytical](#analytical)
    -   [Numerical](#numerical)
-   [Multiple Linear Analysis](#multiple-linear-analysis)
-   [Theories](#theories)
    -   [Multicollinearity](#multicollinearity)
    -   [Autocorrelation](#autocorrelation)
    -   [Homoscedasticity](#homoscedasticity)
        -   [Glesjer test](#glesjer-test)
        -   [White test](#white-test)
    -   [Normality](#normality)
-   [Non-linear models](#non-linear-models)
    -   [lin-lin](#lin-lin)
    -   [log-lin](#log-lin)
    -   [lin-log](#lin-log)
    -   [log-log](#log-log)

# The dataset

| t   | $x_t$ | $y_t$ |
| --- | ----- | ----- |
| 1   | 1     | 2     |
| 2   | 1     | 2     |
| 3   | 4     | 6     |
| 4   | 4     | 8     |
| 5   | 2     | 3     |
| 6   | 6     | 9     |

# Simple Linear Regression

| t      | $x_t$ | $y_t$ | $x_t - \bar x$ | $y_t - \bar y$ | $(x_t - \bar x) \cdot (y_t - \bar y)$ | $(x_t - \bar x) ^ 2$ | $\hat y_t = 0.5 + 1.5 \cdot x_t$ | $u_t$ | $u_t ^ 2$ |
| ------ | ----- | ----- | -------------- | -------------- | ------------------------------------- | -------------------- | -------------------------------- | ----- | --------- |
| 1      | 1     | 2     | -2             | -3             | 6                                     | 4                    | 2                                | 0     | 0         |
| 2      | 1     | 2     | -2             | -3             | 6                                     | 4                    | 2                                | 0     | 0         |
| 3      | 4     | 6     | 1              | 1              | 1                                     | 1                    | 6.5                              | -0.5  | 0.25      |
| 4      | 4     | 8     | 1              | 3              | 3                                     | 1                    | 6.5                              | 1.5   | 2.25      |
| 5      | 2     | 3     | -1             | -2             | 2                                     | 1                    | 3.5                              | -0.5  | 0.25      |
| 6      | 6     | 9     | 3              | 4              | 12                                    | 9                    | 9.5                              | -0.5  | 0.25      |
| $\sum$ | 18    | 30    | -              | -              | 30                                    | 20                   | -                                | -     | 3         |

$$y_t = \beta_0 + \beta_1 \cdot x_t + u_t;\ t = \overline{1,n}$$

$$\hat y_t =\hat \beta_0 + \hat \beta_1 \cdot x_t + \bar u$$

$$\bar x = \dfrac{\sum x_t}{n} = \dfrac{18}{6} = 3$$

$$\bar y = \dfrac{\sum y_t}{n} = \dfrac{30}{6} = 5$$

$$\hat \beta_1 = \dfrac{\sum (x_t - \bar x) \cdot (y_t - \bar y)}{\sum (x_t - \bar x)^2} = \dfrac{30}{20} = 1.5$$

$$\hat \beta_0 = \bar y - \beta_1 \cdot \bar x = 5 - 1.5 \cdot 3 = 5 - 4.5 = 0.5$$

$$\hat y_t = 0.5 + 1.5 \cdot x_t$$

$$u_t = y_t - \hat y_t$$

$$T ^ 2 = \hat \beta_2$$

## Hypothesis testing

$$
\begin{cases}
    H_0: \beta = \beta_{H_0} = 0 \\
    H_1: \beta \not = \beta_{H_0} \not = 0
\end{cases}
$$

### 1. Testing the significance with confidence intervals

$$\beta - SE(\beta) \cdot t_{critical} \text{ (upper limit)}$$

$$\beta + SE(\beta) \cdot t_{critical} \text{ (lower limit)}$$

$$t_{critical} = t_{\alpha / 2;n-2} = t_{0.05/2;4} = 2.776$$

**Standard error (analytical)**

$$SE(\beta_0) = \sigma_u \cdot \sqrt{\cdot \left(\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum (x_t - \bar x) ^ 2}\right)}$$

$$SE(\beta_1) = \dfrac{\sigma_u}{ \sqrt{\sum (x_t - \bar x) ^2}}$$

$$\sigma_u = \sqrt{\sigma_{u_t} ^ 2} = \sqrt{\text{MS Residual}}$$

$$\sigma_u ^ 2 = \dfrac{\sum u_t ^ 2}{n-2}$$

$$\beta_0 \in ( \beta_0 - SE(\beta_0) \cdot t_{critical},\ \beta_0 + SE(\beta_0) \cdot t_{critical})$$

**Standard eror (numerical)**

$$\sigma_{u_t}^2 = \dfrac{3}{4} = 0.75$$

$$\sigma_u = \sqrt{0.75} = 0.9$$

$$SE(\beta_0) = 0.9 \cdot \sqrt{\dfrac{1}{6}+\dfrac{3 ^ 2}{20}} = 0.7$$

$$SE(\beta_1) = \dfrac{0.9}{\sqrt{20}} = 0.2$$

$$\beta_0 \in (0.5 - 0.7 \cdot 2.776,\ 0.5 + 0.7 \cdot 2.776) \Rightarrow \beta_0 \in (-1.44,\ 2.44)$$

$$\beta_1 \in (1.5 - 0.2 \cdot 2.776,\ 1.5 + 0.2 \cdot 2.776) \Rightarrow \beta_1 \in (0.94,\ 2.06)$$

> The confidence intervals shows with $(100 - \alpha)\%$ that the value of $\beta$ lays between the range of lower and upper limits:
>
> -   With 95% confidence $\beta_0$ can be between $-1.44$ and $2.44$
> -   With 95% confidence $\beta_1$ can be between $0.94$ and $2.06$
>
> If $\beta_1$ is 0 then we can't say that our model has a statistical significance

### 2. Testing the significance using a t-test

$$
\begin{cases}
    H_0: \beta = \beta_{H_0} = 0 \\
    H_1: \beta \not = \beta_{H_0} \not = 0
\end{cases}
$$

$$t_{calc} = \dfrac{\hat \beta - \beta_{H_0}}{SE(\hat \beta)} = \dfrac{\hat \beta}{SE(\hat \beta)}$$

$$t_{calc} > t_{critical} \Leftrightarrow \text{reject } H_0 \text{, else reject } H_1$$

$$t_{calc}(\hat \beta_1) = \dfrac{\hat \beta_1}{SE(\hat \beta_1)} = \dfrac{1.5}{0.2} = 7.5$$

$$t_{calc}(\hat \beta_0) = \dfrac{\hat \beta_0}{SE(\hat \beta_0)} = \dfrac{0.5}{0.7} = 0.71$$

$$7.5 > 2.776 \Leftrightarrow t_{calc}(\hat \beta_1) > t_{critical} \Rightarrow \text{reject } H_0$$

$$0.71 < 6.6 \Leftrightarrow t_{calc}(\hat \beta_0) < t_{critical} \Rightarrow \text{reject } H_1$$

# ANOVA

Test the validity of the regression model by doing a Fischr test

Considering that we have $k$ variables:

$$
\begin{cases}
    H_0: \beta_1 = \beta_2 = \dotsc = \beta_k = 0 \\
    H_1: \text{At least one } \beta_k \text{ will be different to } 0
\end{cases}
$$

## Analytical

| Variance due to        | df        | Sum of Squares                                | Mean of suqares                                | F                                           |
| ---------------------- | --------- | --------------------------------------------- | ---------------------------------------------- | ------------------------------------------- |
| Regression (Explained) | $k$       | $SS_{Explained} = \sum (\hat y_t - \bar y)^2$ | $MS_{Explaiend} = \dfrac{SS_{Explained}}{k}$   | $F = \dfrac{MS_{Explained}}{MS_{Residual}}$ |
| Residuals              | $n-k - 1$ | $SS_{Residual} = \sum (y_t - \hat y_t)^2$     | $MS_{Residual} = \dfrac{SS_{Residual}}{n-k-1}$ |                                             |
| Total                  | $n-1$     | $SS_{Total} = \sum (y_t - \bar y) ^2$         | $MS_{Total} = \dfrac{SS_{Total}}{n-1}$         |                                             |

> $$y_t = \underset{\hat y_t}{[\beta_0 - \beta_1 \cdot x_t]} + u_t \Rightarrow y_t = \hat y_t + u_t$$
>
> $$SS_{Total} = SS_{Explained} + SS_{Regression}$$
>
> $$MS_{Total} \not= MS_{Explained} + MS_{Regression}$$
>
> $$k = \text{number of variables}$$
>
> $$n = \text{number of observations}$$

## Numerical

| t        | $x_t$ | $y_t$ | $\hat y_t$ | $(y_t - \hat y_t) ^ 2$ | $( y_t - \bar y)$ | $(y_t - \bar y)^2$ |
| -------- | ----- | ----- | ---------- | ---------------------- | ----------------- | ------------------ |
| 1        | 1     | 2     | 2          | 0                      | -3                | 9                  |
| 2        | 1     | 2     | 2          | 0                      | -3                | 9                  |
| 3        | 4     | 6     | 6.5        | 0.25                   | 1                 | 1                  |
| 4        | 4     | 8     | 6.5        | 2.25                   | 3                 | 9                  |
| 5        | 2     | 3     | 3.5        | 0.25                   | -2                | 4                  |
| 6        | 6     | 9     | 9.5        | 0.25                   | 4                 | 16                 |
| $\sum$   | 18    | 30    | -          | **3**                  | -                 | **48**             |
| $\bar A$ | 3     | 5     | -          | -                      | -                 | -                  |

| Variance due to        | df  | Sum of Squares | Mean of Squares | F   |
| ---------------------- | --- | -------------- | --------------- | --- |
| Regression (Explained) | 1   | 45             | 45              | 60  |
| Residuals              | 4   | 3              | 0.75            |
| Total                  | 5   | 48             | 9.6             |

$$
\begin{cases}
    H_0: \beta_1 = \beta_2 = ... = \beta_k = 0 \\
    H_1: \text{at least one } \beta_k \not = 0
\end{cases}
$$

$$F_{critical} = F_{\alpha;\ k;\ n-k-1} = F_{0.05;\ 1;\ 4}= 7.70$$

$$60 > 7.7 \Leftrightarrow F > F_{critical} \Rightarrow \text{reject }H_0$$

> The regression model is valid.

# Multiple Linear Analysis

$$
\begin{cases}
    n \beta_0 + \beta_i \sum x_t = \sum y_t \\
    \beta_0 \sum x_t + \beta_1 \sum x_t^2 = \sum x_t y_t
\end{cases}
$$

$$y_t = \beta_0 + \beta_1x_t + u_t;\ t=\overline{1,n}$$

$$X ^ T X \cdot \beta = x ^ T y \Rightarrow \beta = (X ^ T X)^{-1}\cdot X^Ty \text{ (important formula)}$$

$$
\begin{bmatrix}
    y_1 \\
    y_2 \\
    ... \\
    y_n
\end{bmatrix} + \beta_0 \cdot
\begin{bmatrix}
    1 \\
    1 \\
    ... \\
    1
\end{bmatrix} + \beta_1 \cdot
\begin{bmatrix}
    x_1 \\
    x_2 \\
    ... \\
    x_n
\end{bmatrix} +
\begin{bmatrix}
    u_1 \\
    u_2 \\
    ... \\
    u_n
\end{bmatrix} =
\underset{\beta}{\begin{bmatrix}
    \beta_0 \\
     \beta_1
\end{bmatrix}} \cdot
\underset{x}{\begin{bmatrix}
    1 & x_1 \\
    1 & x_2 \\
    ... \\
    1 & x_n
\end{bmatrix}} +
\underset{u}{\begin{bmatrix}
    u_1 \\
    u_2 \\
    ... \\
    u_4
\end{bmatrix}}
$$

$$
\begin{bmatrix}
    1 & 1 & ... & 1 \\
    x_1 & x_2 & ... & x_n
\end{bmatrix} \cdot
\begin{bmatrix}
    1 & x_1 \\
    1 & x_2 \
    ... \\
    1 & x_n
\end{bmatrix} \cdot
\begin{pmatrix}
    \beta_0 \\
    \beta_1
\end{pmatrix} =
\begin{bmatrix}
    1 & 1 & ... & 1 \\
    x_1 & x_2 & ... & x_n
\end{bmatrix} \cdot
\begin{bmatrix}
    y_1 \\
    y_2 \\
    ... \\
    y_n
\end{bmatrix}
$$

$$
\begin{bmatrix}
    n & \sum x_t \\
    \sum x_t & \sum x_t^2
\end{bmatrix} \cdot
\begin{bmatrix}
    \beta_0\\
    \beta_1
\end{bmatrix} =
\begin{bmatrix}
    \sum y_t\\
    \sum x_t y_t
\end{bmatrix}
$$

# Theories

## Multicollinearity

$$VIF = \dfrac{1}{1-R_k^2} < 10$$

```R
RSq1=lm(NoSellers~CommercialArea+ShoppingCenter, data=MLR_Assumption_and_Dummy)
summary(RSq1)
```

$$x_1 = f(x_2;x_3) \Rightarrow R_1^2 = 0.8848$$

```R
RSq2=lm(CommercialArea~NoSellers+ShoppingCenter, data=MLR_Assumption_and_Dummy)
summary(RSq2)
```

$$x_2 = f(x_1;x_3) \Rightarrow R_2^2 = 0.8391$$

```R
RSq3=lm(ShoppingCenter~NoSellers+CommercialArea, data=MLR_Assumption_and_Dummy)
summary(RSq3)
```

$$x_3 = f(x_1;x_2) \Rightarrow R_3^2 = 0.5266$$

$$VIF_1 = \dfrac{1}{1-R_1^2} = \dfrac{1}{1-0.8848} = 8.68$$

$$VIF_2 = \dfrac{1}{1-R_2^2} = \dfrac{1}{1-0.8391} = 6.62$$

$$VIF_3 = \dfrac{1}{1-R_3^2} = \dfrac{1}{1-0.5266} = 2.11$$

> If the variables are $< 10$, this means none of the variables generate multicollinearity, if they do we might need to reconsider them

## Autocorrelation

1. Formulate the hypothesis

$$
\begin{cases}
    H_0: \text{No autocorrelation} \\
    H_1: \text{Reject } H_0 \text{, autocorrelation}
\end{cases}
$$

2. Calculate the Durbin Watson test

$$DW = \dfrac{\sum_{t=2}^T [(\hat u_t - \hat u_{t-1})^2]}{\sum_{t=2}^T \hat u_t^2}$$

$$DW_{computed} = 1.59$$

> For a more detailed look please look at the [excel file](./MLModel.xlsx)

3. Get the DW critical values from [here](https://www.statisticshowto.com/durbin-watson-test-coefficient/)

$$DW_{critical} = DW_{0.05;\ n;\ k} = 1.64$$

$$d_U = 1.65$$

$$d_L = 0.7$$

4. Compare the values in the following table

|     | Significant positive autocorrelation |       | No decision |       | No significant autocorrelation |         | No decision |         | Significant negative autocorrelation |     |
| --- | ------------------------------------ | ----- | ----------- | ----- | ------------------------------ | ------- | ----------- | ------- | ------------------------------------ | --- |
| 0   |                                      | $d_L$ |             | $d_U$ |                                | $4-d_U$ |             | $4-d_L$ |                                      | 4   |

In our case:

|     | Significant positive autocorrelation |       | No decision |        | No significant autocorrelation |        | No decision |       | Significant negative autocorrelation |     |
| --- | ------------------------------------ | ----- | ----------- | ------ | ------------------------------ | ------ | ----------- | ----- | ------------------------------------ | --- |
| 0   |                                      | $0.7$ | X           | $1.64$ |                                | $2.36$ |             | $3.3$ |                                      | 4   |

> $DW_{comp}=1.6$ is between $d_L=0.7$ and $d_U=1.64$, therefore we can not say if the H0 hypothesis is rejected or not.

## Homoscedasticity

1. Formulate the hypothesis

$$
\begin{cases}
    H_0: \text{there is homoscedasticity} \\
    H_1: \text{Reject } H_0 \text{, heteroscedasticity}
\end{cases}
$$

### Glesjer test

2. Make the regression model with the residuals (as absolute value) as the dependent variable and all the variables as the independent variables

$$|U_i| = \alpha_0 + \alpha_1 x_1 + \alpha_2 x_2 + ... + \alpha_k x_k$$

In our case:

$$|U_i| = \alpha_0 + \alpha_1 \times \text{NoSellers} + \alpha_2 \times \text{CommercialArea}$$

3. If the coefficients are statistically significant we have heteroscedasticity (reject H0), if not, we have homoscedasticity

From the [excel file](./MLModel.xlsx):

|                |     | P-value |
| -------------- | --- | ------- |
| Intercept      | ... | 0.3464  |
| NoSellers      | ... | 0.5879  |
| CommercialArea | ... | 0.2169  |

> Because the coeffiecients, in our case, are not statistically significant, we conclude that we accept $H_0$ and the error term is homoscedastic.

### White test

2. Make the regression model with the residuals (squared) as the dependent variable and all the variables as the independent variables and their squared values

$$U_i^2 = \alpha_0 + \alpha_1 x_1 + \alpha_1^2 x_1^2 + \alpha_2 x_2 + \alpha_2^2 x_2^2 + ... + \alpha_k x_k + \alpha_k^2 x_k^2$$

In our case:

$$U_i^2 = \alpha_0 + \alpha_1 \times \text{NoSellers} + \alpha_1^2 \times \text{NoSellers}^2 + \\ \alpha_2 \times \text{CommercialArea} + \alpha_2^2 \times \text{CommercialArea}^2$$

3. We compute the model, take $R^2$ and compute the white test

From the [excel file](./MLModel.xlsx):

$$R^2 = 0.594869$$

$$n=10 \text{ (no. observations)}$$

$$LM = n \cdot R^2 = 10 * 0.59486 = 5.9486$$

4. Compare to critical value

> Get the critical values from [here](https://people.richland.edu/james/lecture/m170/tbl-chi.html)

$$k = 4 \text{ (no. of independent variables used for the model above)}$$

$$\chi_{0.05; k}^2  = \chi_{0.05; 4}^2 = 9.488$$

$$5.95 < 9.488 \Leftrightarrow LM < \chi^2 \Rightarrow \text{accept } H_0$$

## Normality

1. Formulate the hypothesis

$$
\begin{cases}
    H_0: \text{the residuals are normally distributed} \\
    H_1: \text{the residuals are not normally distributed}
\end{cases}
$$

2. Given skewness and kurtosis (if not, check the [excel file](./MLModel.xlsx) for steps on how to calculate) calculate the $JB$ coefficient

$$JB = \dfrac{n}{6} \left[\text{Skewness}^2+\dfrac{(\text{Kurtosis} - 3)^2}{4}\right] = 1.43$$

3. Compare against the static value of $\chi^2 = 5.99$

$$1.43 < 5.99 \Leftrightarrow JB > \chi^2 \Rightarrow \text{reject } H_0$$

# Non-linear models

## lin-lin

$$y=f(x)$$

$$1 \text{ unit change in } x \text{ leads to } \beta \text{ units change in } y$$

## log-lin

$$\log{y}=f(x)$$

$$1 \text{ unit change in } x \text{ leads to } 100 \times \beta \text{ units change in } y$$

## lin-log

$$y=f(\log{x})$$

$$1 \text{\% unit change in } x \text{ leads to } \beta \text{ units change in } y$$

## log-log

$$\log{y}=f(\log{x})$$

$$1 \text{\% unit change in } x \text{ leads to } \dfrac{\beta}{100} \text{ units change in } y$$
