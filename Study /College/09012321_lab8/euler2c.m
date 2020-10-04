function X=euler2c()
h=0.1;
format long e
x=zeros(11,1);
y=zeros(11,1);
x(1,1)=0;
y(1,1)=0.25;

syms t;
syms z;
fx=-5*z+5*t*t+2*t;
for i=1:10
    x(i+1) = x(1)+h*i;
    y(i+1) = y(i)+h*(subs(fx,{t,z},{x(i),y(i)}));
   
end

disp([x y])
end
