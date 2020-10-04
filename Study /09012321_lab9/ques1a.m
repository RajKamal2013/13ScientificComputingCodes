function X=ques1a()
format long e;
syms z;
syms t;
fx=z/t-(z/t)^2;
h=0.1;
xo=1;
dft1=diff(fx,'t');
dft2=diff(fx,'t',2);
dft3=diff(dft1,'z');
dfz1=diff(fx,'z');
dfz2=diff(fx,'z',2);
dfz3=diff(dfz1,'t');
y1=zeros(2,1);
k=1;
y2=zeros(2,1);
a=subs(fx,{t,z},{k,xo});
b=subs(dft1,{t,z},{k,xo});
c=subs(dft2,{t,z},{k,xo});
d=subs(dft3,{t,z},{k,xo})
e=subs(dfz1,{t,z},{k,xo});
f=subs(dfz2,{t,z},{k,xo});
g=subs(dfz3,{t,z},{k,xo})
p=xo+h*subs((subs(fx,{t,z},{1,1}))+h*h*0.5*((subs(dft1,{t,z},{1,1}))+(subs(dfz1,{t,z},{1,1}))*(subs(fx,{t,z},{1,1}))));
p1=p+(h^3*(c+2*a*d+f*a*a+b*e+a*e*e))*1/6;

xo=p1;
k=1.1;
a=subs(fx,{t,z},{k,xo});
b=subs(dft1,{t,z},{k,xo});
c=subs(dft2,{t,z},{k,xo});
d=subs(dft3,{t,z},{k,xo});
e=subs(dfz1,{t,z},{k,xo});
f=subs(dfz2,{t,z},{k,xo});
g=subs(dfz3,{t,z},{k,xo});
q=p+h*subs((subs(fx,{t,z},{1.1,p}))+h*h*0.5*((subs(dft1,{t,z},{1.1,p}))+(subs(dfz1,{t,z},{1.1,p}))*(subs(fx,{t,z},{1.1,p}))));
q1=q+(h^3*(c+2*a*d+f*a*a+b*e+a*e*e))*1/6;
X=[1.1 p p1 ;1.2 q q1]
end
