function X= bisection3(f,a,b,tol)
l=abs(b-a);
itr=log2(l/eps);
fa=feval(f,a);
fb=feval(f,b);
if fa*fb >0
    error('root not possible in the interval');
end
for k=1:itr
    c=(b+a)/2;
    fx=feval(f,c);
    if abs(fx)<tol
    break;
    else if fx*fa<0
            b=c;
    else   
           a=c;
        end
    end  
end  
  X=c;  
  disp('the root is');
  disp(X);
end