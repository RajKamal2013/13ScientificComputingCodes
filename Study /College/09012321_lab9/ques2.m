function X=ques2()
format long e;
syms z;
syms t;
fx=(2/t)*z+t*t*exp(t);
h=0.1;
x=zeros(11,1);
y=zeros(11,1);

for i=2:11
     x(i,1)=1+(i-1)*h;
end

x(1,1)=1;
y(1,1)=0;
dft1=diff(fx,'t');
dfz1=diff(fx,'z');

syms u;
fx1=u*u*(exp(u)-exp(1));
v=zeros(10,1);
v(1,1)=0;
for i=2:11
     v(i,1)=subs(fx1,u,x(i));
     a=subs(fx,{t,z},{x(i-1,1),y(i-1,1)});
     b=subs(dft1,{t,z},{x(i-1,1),y(i-1,1)});
     c=subs(dfz1,{t,z},{x(i-1,1),y(i-1,1)});
     y(i)=y(i-1)+h*a+h*h*0.5*(b+a*c); 
end
error=zeros(11,1);
for i=1:11
    error(i,1)=v(i,1)-y(i,1);
end

X=[x y v];
T=[x  error]
end
