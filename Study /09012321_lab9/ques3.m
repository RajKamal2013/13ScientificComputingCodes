function X=ques3()
h=0.2;
x=zeros(11,1);
Y1=zeros(11,1);
Y2=zeros(11,1);
syms t;
syms z;
fx=z-t*t+1;
x(1,1)=0;
Y1(1,1)=0.5;
Y2(1,1)=0.5;
for i=2:11
    x(i,1)=(i-1)*h;
end
for i=2:11
    a=subs(fx,{t,z},{x(i-1,1),Y1(i-1,1)});
    b=subs(fx,{t,z},{x(i-1,1)+h/2,Y1(i-1,1)+a/2});
    c=subs(fx,{t,z},{x(i-1,1)+h/2,Y1(i-1,1)+b/2});
    d=subs(fx,{t,z},{x(i-1,1)+h,Y1(i-1,1)+c});
    e=subs(fx,{t,z},{x(i-1,1),Y2(i-1,1)});
    f=subs(fx,{t,z},{x(i-1,1)+h*0.5,Y2(i-1,1)+h*e*0.5});
    Y1(i,1)=Y1(i-1,1)+h*1/6*(a+2*b+2*c+d) ;    %Rk4 calcualtion
    Y2(i,1)=Y2(i-1,1)+h*0.5*(e+f);             %Rk2 calculation
end
X=[x Y1 Y2];
end


    
    
    