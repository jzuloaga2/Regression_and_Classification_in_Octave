%clear ; close all; clc ;
clear;

%%   ****************************************     
%%   Load parameters from setParameters.m 
%%   and load data file:
%%   ****************************************     
     [alpha, delta, lambda, degree, predictVec,dataFile] = setParameters;
     data = load(dataFile);

%%   ************************************************
%%   Options for advanced minimization algorithm:
%%   ************************************************
     options = optimset('GradObj', 'on', 'MaxIter', 400);


%%   **************************     
%%   Extract useful variables:  
%%   **************************     
     [X, y] = extractVariables(data); 


%%   ************************************************
%%   Add higher order terms to X: 
%%   ************************************************
     X = myMapper(X,degree);
     predictVec = myMapper(predictVec,degree); 

%%   ***********************************************
%%   Do feature normalization in case the features
%%   are of very different orders of magnitude:
%%   ***********************************************
%     [X,predictVec] = featureNormalize(X,predictVec);


%%   **********************************
%%   Advanced minimization algorithm:
%%   **********************************
     theta = zeros(size(X,2), 1);
     [theta, cost] = ...
       fminunc(@(t)(cf_logistic_reg(lambda,t, X, y)), theta, options);
 

%%   *************************************
%%   Make final prediction:
%%   *************************************
     finalPrediction = predictVec * theta

