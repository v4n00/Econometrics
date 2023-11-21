# Most important formulas

# The model

$$y_t = \beta_0 + \beta_1 \cdot x_t + u_t$$

$$\hat y_t =\hat \beta_0 + \hat \beta_1 \cdot x_t$$

$$u_t = y_t - \hat y_t$$

# Estimators

$$\hat \beta_0 = \bar y - \beta_1 \cdot \bar x$$

$$\hat \beta_1 = \dfrac{\sum (x_t - \bar x) \cdot (y_t - \bar y)}{\sum (x_t - \bar x)^2} \\ \text{or} \\ \hat \beta_1 = \dfrac{n \cdot \sum (x_t y_t) - \sum (x) \cdot \sum (y)}{n \cdot \sum(x ^2) - \sum (x)^2}$$

# Standard Error

$$\sigma_u = \sqrt{\sigma_u ^ 2} = \sqrt{\dfrac{\sum u_t ^ 2}{n-2}}$$

$$SE(\beta_0) = \sigma_u \cdot \sqrt{\left(\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum (x_t - \bar x) ^ 2}\right)}$$

$$SE(\beta_1) = \dfrac{\sigma_u}{ \sqrt{\sum (x_t - \bar x) ^2}}$$

# Hypothesis Testing

$$t_{critical} = t_{\alpha / 2;n-2}$$

$$\beta_i \in (\hat \beta_i - SE(\beta_i) \cdot t_{critical}; \hat \beta_i + SE(\beta_i) \cdot t_{critical})$$

> The confidence intervals shows with $(100 - \alpha)\%$ that the value of $\beta$ lays between the range of lower and upper limits.  
> If $\beta$ is not 0 then we can say that our model has a statistical significance, therefore we reject $H_0$.

# T-testing

$$t_{calc} (\beta_i) = \dfrac{\hat \beta_i}{SE(\hat \beta_i)}$$

$$t_{calc} > t_{critical} \Leftrightarrow \text{reject } H_0 \text{, else reject } H_1$$

# ANOVA

|                        |           |                                               |                                                |                                             |
| ---------------------- | --------- | --------------------------------------------- | ---------------------------------------------- | ------------------------------------------- |
| Variance due to        | df        | Sum of Squares                                | Mean of suqares                                | F                                           |
| Regression (Explained) | $k$       | $SS_{Explained} = \sum (\hat y_t - \bar y)^2$ | $MS_{Explaiend} = \dfrac{SS_{Explained}}{k}$   | $F = \dfrac{MS_{Explained}}{MS_{Residual}}$ |
| Residuals              | $n-k - 1$ | $SS_{Residual} = \sum (y_t - \hat y_t)^2$     | $MS_{Residual} = \dfrac{SS_{Residual}}{n-k-1}$ |                                             |
| Total                  | $n-1$     | $SS_{Total} = \sum (y_t - \bar y) ^2$         | $MS_{Total} = \dfrac{SS_{Total}}{n-1}$         |                                             |

$$SS_{Total} = SS_{Explained} + SS_{Regression}$$

$$MS_{Total} \not= MS_{Explained} + MS_{Regression}$$

$$k = \text{number of variables}$$

$$n = \text{number of observations}$$

$$R ^2 = \dfrac{SS_{Explained}}{SS_{Total}}$$

# Hypothesis Testing (for ANOVA)

$$H_0: \beta_1 = \beta_2 = ... = \beta_k = 0$$

$$H_1: \text{at least one }\beta_k \not = 0$$

$$F_{critical} = F_{\alpha;\ k;\ n-k-1}$$

$$F_{calc} > F_{critical} \Leftrightarrow \text{reject } H_0 \text{, else reject } H_1$$

> The model is valid if we reject $H_0$.

# Matrix calculation

$\beta = (X ^ T X) ^ {-1} \cdot X ^ T y$
