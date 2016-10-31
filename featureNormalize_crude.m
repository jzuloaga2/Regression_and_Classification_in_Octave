
function [X,predictVec] = featureNormalize_crude(X,predictVec)


%%   **********************************************************
%%   This program takes the matrix X of features and normalizes
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


%%   **********************************************************
%%   NOTE:
%%   **********************************************************
%%   This is exactly the same as featuresNormalize.m
%%   but instead of normalizing features by dividing by the 
%%   standard deviation, we normalize by dividing by the range.
%%   **********************************************************



%%   **********************
%    Feature Normalization:
%    **********************		
     for ii=2:size(X,2)
       meanVec(ii) = mean(X(:,ii));
       rangeVec(ii) = max(X(:,ii)) - min(X(:,ii));
       X(:,ii) = ( X(:,ii) - meanVec(ii) )/rangeVec(ii);
       predictVec(ii) = ( predictVec(ii) - meanVec(ii) )/rangeVec(ii);
     end		



end


