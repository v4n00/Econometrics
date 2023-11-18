# Econometrics

_The dataset:_

| t   | $x _t$ | $y _ t$ |
| --- | ------ | ------- |
| 1   | 1      | 2       |
| 2   | 1      | 2       |
| 3   | 4      | 6       |
| 4   | 4      | 8       |
| 5   | 2      | 3       |
| 6   | 6      | 9       |

## Simple Linear Regression

| t      | $x _t$ | $y _ t$ | $x _t - \bar x$ | $y _t - \bar y$ | $(x _t - \bar x) \cdot (y _t - \bar y)$ | $(x _t - \bar x) ^ 2$ | $\hat y _t = 0.5 + 1.5 \cdot x _t$ | $u _ t$ | $u _ t ^ 2$ |
| ------ | ------ | ------- | --------------- | --------------- | --------------------------------------- | --------------------- | ---------------------------------- | ------- | ----------- |
| 1      | 1      | 2       | -2              | -3              | 6                                       | 4                     | 2                                  | 0       | 0           |
| 2      | 1      | 2       | -2              | -3              | 6                                       | 4                     | 2                                  | 0       | 0           |
| 3      | 4      | 6       | 1               | 1               | 1                                       | 1                     | 6.5                                | -0.5    | 0.25        |
| 4      | 4      | 8       | 1               | 3               | 3                                       | 1                     | 6.5                                | 1.5     | 2.25        |
| 5      | 2      | 3       | -1              | -2              | 2                                       | 1                     | 3.5                                | -0.5    | 0.25        |
| 6      | 6      | 9       | 3               | 4               | 12                                      | 9                     | 9.5                                | -0.5    | 0.25        |
| $\sum$ | 18     | 30      | -               | -               | 30                                      | 20                    | -                                  | -       | 3           |

$y _t = \beta _0 + \beta _1 \cdot x _t + u _t;\ t = \overline{1,n}$  
$\hat y _t =\hat \beta _ 0 + \hat \beta _1 \cdot x _t$

$\hat \beta _ 0 = \bar y - \beta _ 1 \cdot \bar x = 5 - 1.5 \cdot 3 = 5 - 4.5 = 0.5$  
$\hat \beta _ 1 = \dfrac{\sum (x _ t - \bar x) \cdot (y _ t - \bar y)}{\sum (x _t - \bar x)^2} = \dfrac{30}{20} = 1.5$
$\bar x = \dfrac{\sum x _ t}{n} = \dfrac{18}{6} = 3$
$\bar y = \dfrac{\sum y _ t}{n} = \dfrac{30}{6} = 5$

$\hat y _t = 0.5 + 1.5 \cdot x _t$  
$u _t = y _t - \hat y _ t$

## Hypothesis testing

$H _0: \beta = 0$  
$H _1: \beta \not = 0$

### 1. Testing the significance with confidence intervals

$\beta - SE(\beta) \cdot t_{critical}$ (upper limit)  
$\beta + SE(\beta) \cdot t_{critical}$ (lower limit)  
$t_{critical} = t _ {\alpha / 2;n-2} = t _ {0.05/2;4} = 2.776$

$SE(\beta _ 0) = \sigma _ u \cdot \sqrt{\cdot \left(\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum (x _t - \bar x) ^ 2}\right)}$  
$SE(\beta _1) = \dfrac{\sigma _u}{ \sqrt{\sum (x _t - \bar x) ^2}}$

Standard error (analytical)  
$\sigma _ u = \sqrt{\sigma _ {u _ t} ^ 2} = \sqrt{MS Residual}$  
$\sigma _ u ^ 2 = \dfrac{\sum u _ t ^ 2}{n-2}$  
$\beta _ 0 \in ( \beta _0 - SE(\beta _0) \cdot t _ {0.05/2}; \beta _0 + SE(\beta _0) \cdot t _ {0.05/2})$

Standard eror (numerical)  
$\sigma _ {u_t}^2 = \dfrac{3}{4} = 0.75$  
$\sigma _ u = \sqrt{0.75} = 0.9$

$SE(\beta _0) = 0.9 \cdot \sqrt{\dfrac{1}{6}+\dfrac{3 ^ 2}{20}} = 0.7$  
$SE(\beta _1) = \dfrac{0.9}{\sqrt{20}} = 0.2$

$\beta _ 0 \in (0.5 - 0.7 \cdot 2.776\ ;\ 0.5 + 0.7 \cdot 2.776) \Rightarrow \beta _0 \in (-1.44\ ;\ 2.44)$  
$\beta _ 1 \in (1.5 - 0.2 \cdot 2.776\ ;\ 1.5 + 0.2 \cdot 2.776) \Rightarrow \beta _1 \in (0.94\ ;\ 2.06)$

The confidence intervals shows with $(100 - \alpha)\%$ that the value of $\beta$ lays between the range of lower and upper limits:

-   With 95% confidence $\beta _ 0$ can be between $-1.44$ and $2.44$
-   With 95% confidence $\beta _ 1$ can be between $0.94$ and $2.06$

If $\beta _ 1$ is 0 then we can't say that our model has a statistical significance

### 2. Testing the significance using a t-test

$H _ 0: \beta = \beta _ {H _ 0} = 0$ (in case of LM)  
$H _ 1: \beta \ne \beta _ {H _ 0} \ne 0$  
aka  
$H _ 0: \beta = 0$  
$H _ 1: \beta \ne 0$  
$t_{calc} = \dfrac{\hat \beta - \beta _ {H _ 0}}{SE(\hat \beta)} = \dfrac{\hat \beta}{SE(\hat \beta)}$  
if $t _{calc} > t_{critical} \Rightarrow$ reject $H _ 0$  
$t _ {critical} = t _ {\alpha/2;\ n-2} = t _ {0.05/2;\ 6-2} = t _ {0.025;\ 4} = 2.776$ (from the table)

> $\alpha$ = significance level  
> $n-2$ = degrees of freedom

$\sigma _ u ^ 2 = \dfrac{\sum u _ t ^ 2}{n-2} = \dfrac{3}{4} = 0.75$  
$\sigma _ u = \sqrt{\sigma _ u ^ 2} = \sqrt{0.75} = 0.9$

$SE(\beta _ 0) = \sigma _ u \cdot \sqrt{\cdot \left(\dfrac{1}{n}+\dfrac{\bar x ^ 2}{\sum (x _t - \bar x) ^ 2}\right)} = 0.9 \cdot \sqrt{\dfrac{1}{6}+\dfrac{3 ^ 2}{20}} = 0.7$  
$SE(\beta _1) = \dfrac{\sigma _u}{ \sqrt{\sum (x _i - \bar x) ^2}} = \dfrac{0.9}{\sqrt{20}} = 0.2$

$t _ {calc}(\hat \beta _ 0) = \dfrac{\hat \beta _ 0}{SE(\hat \beta _ 0)} = \dfrac{0.5}{0.7} = 0.71 < t _ {crit} (=2.776) \Rightarrow$ accept $H _0$  
$t _ {calc}(\hat \beta _ 1) = \dfrac{\hat \beta _ 1}{SE(\hat \beta _ 1)} = \dfrac{1.5}{0.2} = 7.5 > t _ {crit} (=2.776) \Rightarrow$ reject $H _ 0$

## ANOVA

Test the validity of the regression model (Fischr test)

Considering that we have $k$ variables  
$H _ 0: \beta _ 1 = \beta _ 2 = \dotsc = \beta _ k = 0$  
$H _ 1:$ At least one $\beta _ k$ will be different to $0$

**(Analytical)**
| | | | | |
| --- | --- | --- | --- | --- |
| Variance due to | df | Sum of Squares | Mean of suqares | F | a |
| Regression (Explained) | $k$ | $SS _{Explained} = \sum (\hat y _ t - \bar y)^2$ | $MS _ {Explaiend} = \dfrac{SS _ {Explained}}{k}$ | $F = \dfrac{MS _{Explained}}{MS _ {Residual}}$ |
| Residuals | $n-k - 1$ | $SS _ {Residual} = \sum (y _ t - \hat y _ t)^2$ | $MS _{Residual} = \dfrac{SS _ {Residual}}{n-k-1}$ | |
| Total | $n-1$ | $SS _ {Total} = \sum (y _ t - \bar y) ^2$ | $MS _ {Total} = \dfrac{SS _ {Total}}{n-1}$ | |

> $y _ t = \underset{\hat y _ t}{[\beta _ 0 - \beta _ 1 \cdot x _ t]} + u _t \Rightarrow y _ t = \hat y _ t + u _ t$  
> $SS _ {Total} = SS _ {Explained} + SS _ {Regression}$  
> $k$ = number of variables  
> $n$ = number of observations (the sample's volume)

**(Numerical)**
| t | $x _t$ | $y _ t$ | $\hat y _t$ | $(y _ t - \hat y _ t) ^ 2$ | $( y _ t - \bar y)$ | $(y _ t - \bar y)^2$
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 1 | 2 | 2 | 0 | -3 | 9 |
| 2 | 1 | 2 | 2 | 0 | -3 | 9 |
| 3 | 4 | 6 | 6.5 | 0.25 | 1 | 1 |
| 4 | 4 | 8 | 6.5 | 2.25 | 3 | 9 |
| 5 | 2 | 3 | 3.5 | 0.25 | -2 | 4 |
| 6 | 6 | 9 | 9.5 | 0.25 | 4 | 16 |
| $\sum$ | 18 | 30 | - | **3** | - | **48** |
| $\bar A$ | 3 | 5 | - | - | - | - |

|                        |     |                |                 |     |
| ---------------------- | --- | -------------- | --------------- | --- |
| Variance due to        | df  | Sum of Squares | Mean of Squares | F   |
| Regression (Explained) | 1   | 45             | 45              | 60  |
| Residuals              | 4   | 3              | 0.75            |
| Total                  | 5   | 48             | 9.6             |

$H _ 0: \beta _1 = \beta_2 = ... = \beta _ k = 0$  
$H _ 1:$ at least one $\beta _ k \not = 0$  
$F _ {calc} = \dfrac{MS _ {expl}}{MS _ {MS _ {rend}}} > F _ {critical} = F _ {\alpha;\ k;\ n-k-1} = F _ {0.05;\ 1;\ 4}= 7.70 \Rightarrow$ reject $H _ 0$  
The regression model is valid!

$\begin{cases}
    n \beta _ 0 + \beta _ i \sum x _ t = \sum y _ t\\
    \beta _ 0 \sum x _ t + \beta 1 \sum x _ t ^ 2 = \sum x _ t y _ t
\end{cases}$

$\begin{bmatrix}
    y _ 1\\
    y_2\\
    y_3\\
    ...\\
    y_n
\end{bmatrix} + \beta _ 0 \cdot
\begin{bmatrix}
1\\1\\1\\...\\1
\end{bmatrix} + \beta _ 1 \cdot
\begin{bmatrix}
x_1\\x_2\\x_3\\...\\ x_n
\end{bmatrix} + 
\begin{bmatrix}
u_1\\u_2\\u_3\\...\\u_n
\end{bmatrix}=
\begin{bmatrix}
\beta _ 0\\ \beta _ 1
\end{bmatrix} \cdot
\begin{bmatrix}
1 & x_1\\1 & x_2\\1 & x _3 \\ ... \\ 1 & x _ 4
\end{bmatrix} + 
\begin{bmatrix}
u_1\\u_2\\u_3\\...\\u_4
\end{bmatrix}$

$X ^ T X \cdot \beta = x ^ T y \Rightarrow \beta = (X ^ T X)^{-1}\cdot X^Ty$

$\begin{bmatrix}
    1 & 1 & 1 & ... & 1\\
    x_1 & x_2 & x_3 & ... & x_n\\
\end{bmatrix} \cdot
\begin{bmatrix}
    1 & x _1\\
    1&x_2\\
    1&x_3\\
    ...\\
    1&x_n\\
\end{bmatrix} \cdot
\begin{pmatrix}
    \beta _ 0\\ \beta _ 1
\end{pmatrix} =
\begin{bmatrix}
    1&1&1&...&1\\
    x_1&x_2&x_3&...&x_n\\
\end{bmatrix} \cdot
\begin{bmatrix}
    y_1\\y_2\\y_3\\...\\y_n
\end{bmatrix}$

$\begin{bmatrix}
    n&\sum x_t\\
    \sum x_t & \sum x_t^2
\end{bmatrix} \cdot
\begin{bmatrix}
    \beta _ 0\\ \beta _ 1
\end{bmatrix} =
\begin{bmatrix}
    \sum y _ t\\ \sum x_t y_t
\end{bmatrix}$
