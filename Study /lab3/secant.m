function X=secant(f,y,x,tol)
format long e;
err=abs(y-x);
while err>tol
    denom=(y-x)*f(y);
    num=f(y)-f(x);
    z=y-(denom/num);
    err=norm(z-y);
    x=y;
    y=z;
end
disp(y);


    
end    


 

















