function X=newton(f,x,tol)
format long e;
g=inline(diff(char(f)))
err=tol+1;
while err>tol
    delta=(-f(x)/g(x)); 
    
    x=x+delta; 
    err=norm(delta);
end    
X=x;
end
