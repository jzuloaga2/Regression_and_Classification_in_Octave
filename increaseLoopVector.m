function out = increaseLoopVector(loopVector,arrayF)


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


for ii=length(loopVector):(-1):1
  if(loopVector(ii)<arrayF(ii))
    loopVector(ii)=loopVector(ii)+1;
    for jj=(ii+1):length(loopVector)
      loopVector(jj)=loopVector(ii);
    end
    break;
  end
end

out = loopVector;
