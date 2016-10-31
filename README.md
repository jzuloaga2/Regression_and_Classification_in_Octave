# Regression_and_Classification_in_Octave
Octave functions to solve regression and classification problems


This is a set of Octave functions to solve
REGRESSION and CLASSIFICATION problems.


**************************************************
REGRESSION:
**************************************************

There are 3 options for regression problems:


(1)  linear_GD.m 

Implements a gradient descent algorithm 
(gradientDescent_using_linear_cf.m) to
find the optimal hypothesis for linear regression.
Uses FEATURE NORMALIZATION (featureNormalize.m) 
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).


(2)  linear_Advanced.m

Finds optimal hypothesis for linear regression
using Octave's fminunc function to minimize
the cost function for linear regression (cf_linear.m).
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).


(3)  linear_NEM.m

Finds optimal hypothesis for linear regression analytically
by minimizing least squares error using the
NORMAL EQUATIONS METHOD (NEM).
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m)


**************************************************
CLASSIFICATION:
**************************************************

There are 4 options for classification problems:


(1) logistic_GD.m 

Finds optimal hypothesis for logistic regression
using a gradient descent algorithm
(gradientDescent_using_logistic_cf.m) to
minimize the cost function (cf_logistic.m)
for logistic regression.
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).


(2) logistic_GD_reg.m

Finds optimal hypothesis for logistic regression
using a gradient descent algorithm
(gradientDescent_using_logistic_cf_reg.m) to
minimize the cost function (cf_logistic_reg.m)
for logistic regression
with REGULARIZATION to avoid OVERFITTING.
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).


(3) logistic_Advanced.m

Finds optimal hypothesis for logistic regression
using Octave's fminunc function to minimize
the cost function for logistic regression
(cf_logistic.m)
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).


(4) logistic_Advanced_reg.m

Finds optimal hypothesis for logistic regression
using Octave's fminunc function to minimize
the cost function (cf_logistic_reg.m)
for logistic regression
with REGULARIZATION to avoid OVERFITTING
Uses FEATURE NORMALIZATION (featureNormalize.m)
for faster convergence.
We may add higher order linear combinations of
the features (myMapper.m).





**************************************************
Other functions:
**************************************************

cf_linear.m
    Cost funciton for linear regression.

cf_logistic.m
    Cost function for logistic regression.

cf_logistic_reg.m
    Cost function for logistic regression
    with REGULARIZATION to avoid
    OVERFITTING.

extractVariables.m
    Extracts dimensions from matrices of
    features and targest and puts matrix
    of features in the needed form.

featureNormalize.m
    Normalizes features using standard deviation
    of values for each feature.

featureNormalize_crude.m
    Normalizes features using range
    of values for each feature.

gradientDescent_using_linear_cf.m
    Implements Gradient Descent using
    cost function for linear regression
    (squared errors).

gradientDescent_using_linear_cf_crude.m
    Implements Gradient Descent using
    cost function for linear regression
    (squared errors) but ran for a predetermined
    set of iterations instead of until
    convergence.

gradientDescent_using_logistic_cf.m
    Implements Gradient Descent using
    cost function for logistic regression.

gradientDescent_using_logistic_cf_crude.m
    Implements Gradient Descent using
    cost function for logistic regression
    but ran for a predetermined
    set of iterations instead of until
    convergence.

gradientDescent_using_logistic_cf_reg.m
    Implements Gradient Descent using
    cost function for logistic regression
    with regularization.

gradientDescent_using_logistic_cf_reg_crude.m
    Implements Gradient Descent using
    cost function for logistic regression
    with regularization
    but ran for a predetermined
    set of iterations instead of until
    convergence.

increaseLoopVector.m
    Used for adding higher order features.

myMapper.m
    Adds higher order linear combinations
    of the original features.

plot_J_iterations.m
    Plots the value of the cost function
    after each iteration.

setParameters.m
    Sets the parameters for the problem:
    - Learning rate alpha
    - Convergence tolerance delta
    - Regularization parameter lambda
    - Maximum degree for higher order features (degree)
    - predictVect: a vector of testing features.
    - dataFile: File from which we load training data.


**************************************************
DATA:
**************************************************

The folder 'data' has examples of small training
sets to test the algorithms with.




