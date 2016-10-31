function [J, grad] = cf_logistic_reg(lambda,theta, X, y)

    %   **********************************************
    %   Computes the cost function J and gradient grad
    %   for logistic regression with regularization
    %   **********************************************
    
    m = length(y); 
    
    J = 0;
    grad = zeros(size(theta));
    
    %  Compute the sigmoid of X*theta:
    h = 1./(1+exp(-X*theta));
    

    J = -(1/m) * sum(  y.*log(h) + (1-y).*log(1-h)  )   + lambda/(2*m) * (theta'*theta - theta(1)*theta(1));


    grad(1,1) = (1/m)*sum(  (h-y).*X(:,1)   );
    for jj=2:length(theta)
      grad(jj,1) = (1/m)*sum(  (h-y).*X(:,jj)   ) + (lambda/m)*theta(jj);
    end


end
