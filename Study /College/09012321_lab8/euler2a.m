function X=euler2a()
h=0.5;
format long e
x=zeros(,1);
y=zeros(3,1);
x(1,1)=0;
y(1,1)=0;

syms t;
syms z;
fx=t*exp(t)-2*z;
for i=1:2
    x(i+1) = x(1)+h*i;
    y(i+1) = y(i)+h*(subs(fx,{t,z},{x(i),y(i)}));
   
end

disp([x y])
end
