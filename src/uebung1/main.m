h=[0.03 0.02 0.0125 0.0005];

for i=1:length(h)

    figure(i);
    clf
    title (sprintf("h = %.4f",h(i)));
    xlabel ("t");
    ylabel ("x - Werte");
    hold on

    [x,def]=euker(h(i));
    plot(def,x(1,:),'b');
    plot(def,x(2,:),'g');
    legend ("x1","x2");
    
#    figure(i+4)
#    clf
#    plot(x(1,:),x(2,:))

endfor

## results differ strongly with different coefficents 'h' since the differential equation system is unstable