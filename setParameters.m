
function [alpha, delta, lambda, degree, predictVec,dataFile] = setParameters

%%  ****************************************************
%%  These are the parameters for Gradient Descent (GD) :
%%  ****************************************************

%%  **************
%%  Learning rate:
%%  **************
    alpha = 0.01;
%%  **********************
%%  Convergence parameter:
%%  **********************
    delta = 1e-9;


%%  ******************************************************
%%  These are the parameters for regularization (to avoid
%%  overfitting if we have too many high order features)
%%  and adding higher order terms to features:
%%  ******************************************************

%%  *************************
%%  Regularization parameter:
%%  *************************
    lambda = 1;
%%  ****************************************************
%%  Define the maximum degree for higher order features:
%%  ****************************************************
    degree = 2;


%   **************************************************
%%  This is the prediction vector. We give it sample 
%%  features and ask it to predict the outcome of 
%%  those features:
%   **************************************************

    predictVec = [1 34 57];

%%  *************************************************
%%  This is the file from which we load our training
%%  data:
%%  *************************************************

    dataFile = 'data/logistic1.txt';



end
