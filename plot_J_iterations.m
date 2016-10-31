
function plot_J_iterations(J)

  xx = 1:length(J);
  figure
  plot(xx,J,'o','LineWidth',5);
  xlabel('Iteration number');
  ylabel('Cost Function Value');


end
