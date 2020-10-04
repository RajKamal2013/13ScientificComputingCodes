function X=Gauss()
syms x;
fx=1/(x+2);
y1=subs(fx,x,1/(3^0.5));
y2=subs(fx,x,-1/(3^0.5));
Y=y1+y2;
display('Integration by Guass-Legender');
Y



%newton-cotes for n=1
Y1=subs(fx,x,-1)+subs(fx,x,1);
Y1=Y1*2/2;
display('newton-cotes for n=1');
Y1
%newton-cotes for n=2;
Y2=subs(fx,x,-1)+4*subs(fx,x,0)+subs(fx,x,1);
Y2=Y2/3;
display('newton-cotes for n=2');
Y2


display('on coamparing  newton-cotes for n=1 with Gauss -Legender')
error=Y-Y1
display('on coamparing with newton-cotes for n=2 with Gauss -Legender')
error1=Y-Y2
end