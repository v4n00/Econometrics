# The model

$$y_i = \beta_0 + \beta_1 \cdot x_i + u_i$$

$$\hat y_i =\hat \beta_0 + \hat \beta_1 \cdot x_i$$

$$u_i = y_i - \hat y_i$$

# Estimators

$$\hat \beta_0 = \bar y - \hat \beta_1 \cdot \bar x$$

$$\hat \beta_1 = \dfrac{\sum [(x_i - \bar x) \cdot (y_i - \bar y)]}{\sum [(x_i - \bar x)^2]}$$

$$\hat \beta_1 = \dfrac{n \cdot \sum (x_i y_i) - \sum (x) \cdot \sum (y)}{n \cdot \sum(x ^2) - [\sum (x)]^2}$$

# Standard Error

$$\sigma_u = \sqrt{\sigma_u ^ 2} = \sqrt{\dfrac{\sum u_i ^ 2}{n-k-1}} = \sqrt{MS_{Residual}}$$

$$SE(\beta_0) = \sigma_u \cdot \sqrt{\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum [(x_i - \bar x) ^ 2]}}$$

$$SE(\beta_1) = \dfrac{\sigma_u}{ \sqrt{\sum [(x_i - \bar x) ^2]}}$$

# Confidence intervals

$$t_{critical} = t_{\alpha / 2;n-k-1}$$

$$\beta_i \in (\hat \beta_i - SE(\beta_i) \cdot t_{critical}; \hat \beta_i + SE(\beta_i) \cdot t_{critical})$$

# T-testing

$$t_{calc} (\beta_i) = \dfrac{\hat \beta_i}{SE(\hat \beta_i)}$$

$$t_{calc} > t_{critical} \Leftrightarrow \text{reject } H_0 \text{, else reject } H_1$$

# ANOVA

| Variance due to        | df        | Sum of Squares                                  | Mean of suqares                                | F                                           |
| ---------------------- | --------- | ----------------------------------------------- | ---------------------------------------------- | ------------------------------------------- |
| Regression (Explained) | $k$       | $SS_{Explained} = \sum [(\hat y_i - \bar y)^2]$ | $MS_{Explaiend} = \dfrac{SS_{Explained}}{k}$   | $F = \dfrac{MS_{Explained}}{MS_{Residual}}$ |
| Residuals              | $n-k - 1$ | $SS_{Residual} = \sum [(y_i - \hat y_i)^2]$     | $MS_{Residual} = \dfrac{SS_{Residual}}{n-k-1}$ |                                             |
| Total                  | $n-1$     | $SS_{Total} = \sum [(y_i - \bar y) ^2]$         | $MS_{Total} = \dfrac{SS_{Total}}{n-1}$         |                                             |

$$SS_{Total} = SS_{Explained} + SS_{Regression}$$

$$MS_{Total} \not= MS_{Explained} + MS_{Regression}$$

$$R ^2 = \dfrac{SS_{Explained}}{SS_{Total}}$$

$$\text{Adj. } R^2 = 1-(1-R^2)\cdot \dfrac{n-1}{n-k-1}$$

# F-testing

$$
\begin{cases}
    H_0: \beta_1 = \beta_2 = ... = \beta_k = 0 \\
    H_1: \text{at least one }\beta_k \not = 0
\end{cases}
$$

$$F_{critical} = F_{\alpha;\ k;\ n-k-1}$$

$$F_{calc} > F_{critical} \Leftrightarrow \text{reject } H_0 \text{, else reject } H_1$$

# Matrix calculation

$$\beta = (X ^ T X) ^ {-1} \cdot X ^ T y$$

$$SE(\beta_i) = \sqrt{MS_{Residual} \cdot X^TX^{-1}}$$

# Theories

## Multicollinearity

$$VIF = \dfrac{1}{1 - R^2_k} < 10$$

## Auto-correlation

$$
\begin{cases}
    H_0: \text{No autocorrelation} \\
    H_1: \text{Reject } H_0 \text{, autocorrelation}
\end{cases}
$$

$$DW = \dfrac{\sum\limits_{t=2}^T [(\hat u_i - \hat u_{t-1})^2]}{\sum\limits_{t=2}^T (\hat u_i^2)}$$

|     | Significant positive autocorrelation |       | No decision |       | No significant autocorrelation |         | No decision |         | Significant negative autocorrelation |     |
| --- | ------------------------------------ | ----- | ----------- | ----- | ------------------------------ | ------- | ----------- | ------- | ------------------------------------ | --- |
| 0   |                                      | $d_L$ |             | $d_U$ |                                | $4-d_U$ |             | $4-d_L$ |                                      | 4   |

## Homoscedasticity

$$
\begin{cases}
    H_0: \text{there is homoscedasticity} \\
    H_1: \text{Reject } H_0 \text{, heteroscedasticity}
\end{cases}
$$

### Glesjer test

$$|U_i| = \alpha_0 + \alpha_1 x_1 + \alpha_2 x_2 + ... + \alpha_k x_k$$

### White test

$$U_i^2 = \alpha_0 + \alpha_1 x_1 + \alpha_1^2 x_1^2 + \alpha_2 x_2 + \alpha_2^2 x_2^2 + ... + \alpha_k x_k + \alpha_k^2 x_k^2$$

$$LM = n \cdot R^2$$

$$LM < \chi^2 \Rightarrow \text{reject } H_1\text{, else reject } H_0$$

## Normality

$$
\begin{cases}
    H_0: \text{the residuals are normally distributed} \\
    H_1: \text{the residuals are not normally distributed}
\end{cases}
$$

$$JB = \dfrac{n}{6} \left[\text{Skewness}^2+\dfrac{(\text{Kurtosis} - 3)^2}{4}\right] = 1.43$$

$$JB > 5.99 \Rightarrow \text{reject } H_0\text{, else reject } H_1$$
