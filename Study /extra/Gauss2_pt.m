function X=Gauss2_pt()
syms x
a=1/(3^.5);
%ques 5(a)
fx=(1/((2*pi)^0.5))*(exp(-x*x/2));
c=0.5*(1);
m=c;
Y1=m*(subs(fx,x,c+m*(-a))+subs(fx,x,c+m*a));
display('integration of ques 5(a)');
Y1

%ques 5(b)
fx=(1/pi)*(cos(0.6*sin(x)));
c=0.5*(0+pi);
m=c;
Y2=m*(subs(fx,x,c+m*(-a))+subs(fx,x,c+m*a));
display('integration of ques 5(b)');
Y2

%ques 5(c)
fx=x*(1/((x*x-4)^0.5));
c=(3.5+3)/2;
m=(3.5-3)/2;
Y3=m*(subs(fx,x,c+m*(-a))+subs(fx,x,c+m*a));
display('integration of ques 5(c)');
Y3