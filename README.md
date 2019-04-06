# Lasso-implementation-in-R
Self-implemented Lasso algorithm

This file contains a lasso implementation in R, using coordinate descent algorithm, based on the essay by Tibshirani.

- The png files: `coordinate iteration formula.png` and `Lasso- essay by Tibshirani(Part),png` describe the basis of my code
- `Sor soft thresholding function.R` is the code for soft thresholding function(see in `coordinate iteration formula.png`)
- `update function.R` is the code for coordinate wise update function
- `Iteration Function.R` for one iteration step
- `coordinate descent.R` is the final code

Here's a problem. When I test my code on the R-built-in data set `mtcars`, it works well for other coefficients(supress some to zero and pick the most significant ones) except for one variable (`hp` in the data set), compared with the official package `glmnet`; and I can't figure out why.

Besides, I test my code in some self-create data, like, x1,x2,x3 are independent variables, $x_{i}$~N(0,1), and set y=x1+x2 and train the data; but it works well only when the mean value of y is pretty close to zero. So I guess there is a fault in updating the intercept term.
Hope someone can give a hint as to how to modify the code.
