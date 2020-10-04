function X=euler1()
h=0.2;
format long e
x=zeros(11,1);
y=zeros(11,1);
w=zeros(11,1);
error=zeros(11,1);
x(1,1)=0;
y(1,1)=0.5;

syms t;
syms z;
fx=z-t*t+1;
syms v;
f=(v+1)*(v+1)-(0.5*exp(v));
w(1)=0.5;
for i=1:10
    x(i+1) = x(1)+h*i;
    y(i+1) = y(i)+h*(subs(fx,{t,z},{x(i),y(i)}));
    w(i+1)=subs(f,v,x(i+1));
end
for i=1:11
    error(i)=w(i)-y(i);
end   
disp(x)
disp(y)
disp(w)
disp(error)
end
