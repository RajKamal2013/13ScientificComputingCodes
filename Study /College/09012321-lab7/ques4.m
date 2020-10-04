function X= Gauss_int()
c=(1.5+1)/2;
m=(1.5-1)/2;
%two point gauss
syms x;
fx=exp(-x*x);
Y=m*(subs(fx,x,(c+m*1/(3^0.5)))+subs(fx,x,(c+m*(-1)/(3^0.5))));
display('guass 2 point integration');
Y

%three point guass
Y1=m*1/9*(5*subs(fx,x,(c+m*(-1)*(3/5)^0.5))+5*subs(fx,x,(c+m*(3/5)^0.5))+8*subs(fx,x,0));
display('guass 3 point integration');
Y1

a=[1,1.5];

%composite trapezoidal rule for n=2
h=(a(2)-a(1))/2;
for i=1:3
    b(i)=a(1)+(i-1)*h;
    y(i)=subs(fx,x,b(i));
end

Y2=(y(1)+2*y(2)+y(3))/2;
display('by composite trapeziodal rule n=2')
Y2
error1=Y-Y2;
display('error in guass 2 point  comparision with composite trapeziodal rule for n=2');
error1
error2=Y1-Y2;
display('error of guass 3 point in comparision with composite trapeziodal rule n=2');
error2

%composite trapeziodal rule for n=4
h=(a(2)-a(1))/4;
for i=1:5
    b(i)=a(1)+(i-1)*h;
    y(i)=subs(fx,x,b(i));
end

Y3=(y(1)+2*y(2)+2*y(3)+2*y(4)+y(5))/2;
display('by tarapeziodal  rule n=4')
Y3
error1=Y-Y3;
display('error in guass 2 point  comparision with composite trapeziodal rule for n=4');
error1
error2=Y1-Y3;
display('error of guass 3 point in comparision with composite trapeziodal rule n=4');
error2

%simpson rule for n=2
h=(a(2)-a(1))/4;
for i=1:5
    b(i)=a(1)+(i-1)*h;
    y(i)=subs(fx,x,b(i));
end

Y4=(y(1)+4*(y(2)+y(4))+2*y(3)+y(5))/3;
display('by simpson  rule n=2')
Y4
error1=Y-Y4;
display('error in guass 2 point  comparision with simpson rule for n=2');
error1
error2=Y1-Y4;
display('error of guass 3 point in comparision with simpson rule for  n=2');
error2

%simpson rule for n=4;
h=(a(2)-a(1))/8;
for i=1:9
    b(i)=a(1)+(i-1)*h;
    y(i)=subs(fx,x,b(i));
end

Y5=(y(1)+4*(y(2)+y(4)+y(6)+y(8))+2*(y(3)+2*y(7)+y(5))+y(9))/3;
display('by simpson  rule n=4')
Y5
error1=Y-Y5;
display('error in guass 2 point  comparision with simpson rule for n=4');
error1
error2=Y1-Y5;
display('error of guass 3 point in comparision with simpson rule for  n=4');
error2


end
