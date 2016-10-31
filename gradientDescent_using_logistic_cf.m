
function [J,thetaOut] = gradientDescent_using_logistic_cf(theta,X,y,alpha,delta)


    ii=0;
    while(true)
      ii=ii+1;
      [Jtemp,derJ] = cf_logistic(theta,X,y);
      thetaOld = theta;
      theta = theta - alpha * (derJ);
      J(ii) = Jtemp;
      comp = abs((theta-thetaOld)./thetaOld);
      compCount = 0;
      for jj=1:length(comp)
        if(comp(jj)<delta)
          compCount = compCount + 1;
        end
      end
      if(compCount == length(comp))
        break;
      end
    end

    thetaOut = theta;

end
