function X = fixed_pt(f,xo,tol)
format long e;
err=tol+1;
x=feval(f,xo);
y=feval(f,x);
err=abs(y-x);
for k=1:200
    
   
    x=y;
    y=feval(f,x);
    err=abs(y-x);
    if err<tol
        break;
    end
        
end

X=y;
end

