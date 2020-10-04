function X = fixed_pt(f,x,tol)
format long e;
y=f(x);
x=y;
x
err=abs(y-x);
while err>tol
    disp('see');
    y=f(x)
    err=abs(y-x)
    x=y;
end
X=x
end

