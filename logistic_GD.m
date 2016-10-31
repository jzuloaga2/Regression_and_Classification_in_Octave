%clear ; close all; clc ;
clear;

%%   ****************************************     
%%   Load parameters from setParameters.m 
%%   and load data file:
%%   ****************************************     
     [alpha, delta, lambda, degree, predictVec,dataFile] = setParameters;
     data = load(dataFile);


%%   **************************     
%%   Extract useful variables:  
%%   **************************     
     [X, y] = extractVariables(data); 


%%  ************************************************
%%  Add higher order terms to X: 
%%  ************************************************
    X = myMapper(X,degree);
    predictVec = myMapper(predictVec,degree); 

%%  ***********************************************
%%  Do feature normalization in case the features
%%  are of very different orders of magnitude:
%%  ***********************************************
    [X,predictVec] = featureNormalize(X,predictVec);


%   *****************
%   Gradient Descent:
%   *****************
    theta = zeros(size(X,2), 1);
    [J,theta] = gradientDescent_using_logistic_cf(theta,X,y,alpha,delta);
    

%   *****************************************
%   Plot of how the Cost Function J decreases
%   with iteration:
%   *****************************************
    plot_J_iterations(J);




%%  *************************************
%%  Make final prediction:
%%  *************************************
    finalPrediction = predictVec * theta

