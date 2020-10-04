function [x y z]=intgrate(x,y)
n=size(x);
h=x(2)-x(1);
%simple trapeziodal rule.
sum=y(1)+y(2);
sum=sum*h/2;
display('simple trapeziodal rule');
sum
%simple simpson 1/3rd rule.
sum2=y(1)+4*y(2)+y(3);
sum2=sum2*h/3;
display('simpson 1/3rd rule');
sum2
%simple simpson 3/8th rule
sum3=y(1)+3*y(2)+3*y(3)+y(4);
sum3=3*h*sum3/8;
display('the simpson 3/8th rule');
sum3
end

