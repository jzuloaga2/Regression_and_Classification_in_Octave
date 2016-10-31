function out = myMapper(X,degree)


%%  **************************************************
%%  This function adds the higher order terms up to 
%%  the given degree to the features matrix X.
%%  The features matrix originally looks like this:
%%
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


%%  ************************************
    m = length(X(:,1));
    n = length(X(1,:)) - 1;

%%  ********************************************
%%  Define vectors that will be used in 
%%  increseLoopVector(loopVector,arrayF)
%%  to simulate the nested for loops used for
%%  creating the higher order terms we want:
%%  ********************************************
%%  loopVector --> keeps track of indices of the nested
%%                 for loops we are trying to simulate.
%%
%%  arrayF -->  the array of the largest values each
%%              element of loopVector should have.
%%
%%  Both loopVector and arrayF
%%  should be of the same size. They are 
%%  one dimensional vectors.
%%
%%  NOTE: For this application of simulating nested for loops,
%%        we start each nested loop from the value of the current
%%        index of the loop immediately outside it.


    loopVector = ones(1,degree);
    arrayF = loopVector;
    arrayF = loopVector.* (n+1);


%%  *****************
%%  Start while loop:
%%  *****************
    while(true)
%%          ********************************
%%          Perform operation of inner loop:
%%          ********************************
            producto = ones(m,1);
            for ii=loopVector
              producto = producto.*X(:,ii);
            end
            out(:,end+1)=producto;
%           ****************************************************
%           Check to see if loopVector changes after increasing:
%           If it does not change we break out of the while loop:
%           ****************************************************
            loopVectorOld = loopVector;
            loopVector = increaseLoopVector(loopVector,arrayF);
            if(isequal(loopVectorOld,loopVector))
              break;
            end
    end


%%  ************************************
%%  END adding the higher oder terms.
%%  X has been converted to out:
%%  X --> out
%%  ************************************


end
