function X=ques4()
h=0.1;
x=zeros(11,1);
Y1=zeros(11,1);
Y2=zeros(11,1);
syms t;
syms z;
fx=z/t-(z/t)^2;
x(1,1)=1;
Y1(1,1)=1;
Y2(1,1)=1;
syms u;
fx1=u/(1+log(u));
for i=2:11
    x(i,1)=1+(i-1)*h;
end
for i=2:11
    Y2(i,1)=subs(fx1,u,x(i,1));
    e=subs(fx,{t,z},{x(i-1,1),Y2(i-1,1)});
    f=subs(fx,{t,z},{x(i-1,1)+h*0.5,Y2(i-1,1)+h*e*0.5});
    Y1(i,1)=Y1(i-1,1)+h*0.5*(e+f);             %Rk2 calculation
end
X=[x Y1 Y2];
error=zeros(11,1);
for i=1:11
    error(i,1)=Y2(i,1)-Y1(i,1);
end
Z=[x  error]
end


    