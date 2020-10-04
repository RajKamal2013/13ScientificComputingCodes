function X = newton(f,x,tol)
r=inline(char(f))
g=inline(diff(char(f)))
err=tol+1;
while err>tol
    delta=(-r(x)/g(x)); 
    
    x=x+delta; 
    err=norm(delta);
end    
X=x;
end
