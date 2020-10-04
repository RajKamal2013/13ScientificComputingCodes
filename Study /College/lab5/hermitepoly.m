function v=hermitepoly(X,F,Fd,x1)
n=length(X);
v=0;
for i=1:n
    syms x
    l=1;
    for j=1:n
        if j~=i
            l=l*(x-X(j))/(X(i)-X(j));
        end
    end
    ld=diff(l);
    x=x1;
    L=eval(l);
    x=X(i);
    Ld=eval(ld);
    Hb=(x1-X(i))*(L*L);
    H=(1-(2*Ld*(x1-X(i))))*(L*L);
    v=v+F(i)*H+Fd(i)*Hb;
end