function X=euler3()
h1=0.2;
h2=0.1;
format long e
x1=zeros(26,1);
x2=zeros(51,1);
y1=zeros(26,1);
y2=zeros(51,1);
x1(1,1)=0;
x2(1,1)=0;
y1(1,1)=1;
y2(1,1)=1;

syms t;
syms z;
fx=z-t+1;
for i=1:26
    x1(i+1) = x1(1)+h1*i;
    y1(i+1) = y1(i)+h1*(subs(fx,{t,z},{x1(i),y1(i)}));
end
for i=1:51
    x2(i+1) = x2(1)+h2*i;
    y2(i+1) = y2(i)+h1*(subs(fx,{t,z},{x2(i),y2(i)}));
end   
disp(x1(26,1));
disp(x2(51,1));
disp(y1(26,1));
disp(y2(51,1));
end
