
function [J,thetaOut] = gradientDescent_using_linear_cf_crude(theta,X,y,alpha)


%%  **************************************************  
%%  We use this function if we want to do gradient descent
%%  for a fixed number of iterations instead of until convergence.				    
%%  **************************************************

  
%%  **************************************************
%%  Number of iterations for gradient descent:
%%  **************************************************
    iterations = 1500;


%%  **********************
%%  Run Gradient Descent:
%%  **********************
    for ii=1:iterations
      [Jtemp,derJ] = cf_linear(theta,X,y);
      theta = theta - alpha * (derJ);
      J(ii) = Jtemp;
    end



    thetaOut = theta;


end

