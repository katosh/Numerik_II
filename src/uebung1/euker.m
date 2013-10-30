function [x, def]=euker(h)

    n=floor(1/h)+1;
    def=0:h:1;
    x=zeros(2,n);
    x(1,1)=0;
    x(2,1)=99;
    
    for i=2:n
        x1=x(1,i-1) ;
        x2=x(2,i-1);
        x(1,i) = x1 + h*( x2 - x1 );
        x(2,i) = x2 + h*( -100*x2 );
    endfor
    
endfunction