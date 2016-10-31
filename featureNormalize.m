
function [X,predictVec] = featureNormalize(X,predictVec)

%%   **********************************************************
%%   This takes the matrix X of features and normalizes
%%   the features. The matrix X that is fed as an argument to
%%   this function already includes the 1s for xo values, and
%%   looks like this:
%%   **********************************************************
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%    | 1  x1  x2  x3  x4  ... xn |
%%                                 m x (n+1)    <--- matrix dimensions


%%   **********************
%    Feature Normalization:
%    **********************		
     for ii=2:size(X,2)
       meanVec(ii) = mean(X(:,ii));
       stdVec(ii) = std(X(:,ii));
       X(:,ii) = ( X(:,ii) - meanVec(ii) )/stdVec(ii);
       predictVec(ii) = ( predictVec(ii) - meanVec(ii) )/stdVec(ii);
     end		

end


