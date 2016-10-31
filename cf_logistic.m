function [J, grad] = cf_logistic(theta, X, y)

    %   **********************************************
    %   Computes the cost function J and gradient grad
    %   for logistic regression
    %   **********************************************
    
    m = length(y); 
    
    J = 0;
    grad = zeros(size(theta));
    
    %  Compute the sigmoid of X*theta:
    h = 1./(1+exp(-X*theta));
    
    J = -(1/m) * sum(  y.*log(h) + (1-y).*log(1-h)  );
    
    
    for jj=1:length(theta)
      grad(jj,1) = (1/m)*sum(  (h-y).*X(:,jj)   );
    end


end


