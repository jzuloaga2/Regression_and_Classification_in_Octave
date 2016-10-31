
function [X, y] =  extractVariables(data)

   m = length(data(:,1));
   n = length(data(1,:))-1;
   X = data(1:m,1:n);
   X = [ones(m,1),X];
   y = data(1:m,(n+1));


end
