function X=euler2b()
h=0.25;
format long e
x=zeros(9,1);
y=zeros(9,1);
x(1,1)=1;
y(1,1)=2;

syms t;
syms z;
fx=1+z/t;
for i=1:8
    x(i+1) = x(1)+h*i;
    y(i+1) = y(i)+h*(subs(fx,{t,z},{x(i),y(i)}));
   
end

disp([x y])
end
