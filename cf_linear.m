function [J, grad] = cf_linear(theta, X, y)

    %   **********************************************
    %   Computes the cost function J and gradient grad
    %   for linear regression
    %   **********************************************
    
    m = length(y); 
    
    J = 0;
    grad = zeros(size(theta));
    

    J = 1/(2*m) * sum( (X*theta-y).^2  );    
    
    for jj=1:length(theta)
      grad(jj) = (1/m) * (X*theta-y)'*X(:,jj);  
    end
  

end


