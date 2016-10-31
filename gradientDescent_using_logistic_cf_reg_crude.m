
function [J,thetaOut] = gradientDescent_using_logistic_cf_reg_crude(lambda,theta,X,y,alpha)


%%  **************************************************  
%%  We use this function if we want to do gradient descent
%%  for a fixed number of iterations instead of until convergence.				    
%%  **************************************************

  
%%  ********************************
%%  Some gradient descent settings:
%%  ********************************
    iterations = 1500;


%%  **********************
%%  Run Gradient Descent:
%%  **********************
    for ii=1:iterations
	     [Jtemp,derJ] = cf_logistic_reg(lambda,theta,X,y);
      theta = theta - alpha * (derJ);
      J(ii) = Jtemp;
    end



    thetaOut = theta;


end

