function X=herm(X,y,z,p)
format short e;
H=0;
n=size(X);
for i=1:n
    syms x;
    l=1;
    for j=1:n
        if j~=i
            l=l*((x-X(j))/(X(i)-X(j)));
        end
    end
    diff_l=diff('l');
    L=subs(l,x,0.25);
    %L=eval(l);
    Ld=subs(diff_l,x,0.25);
    h1=(1-(2*Ld*(p-X(i))))*(L*L);
    h2=(p-X(i))*L*L;
    H=H+((y(i)*h1)+(z(i)*h2));
end
X=H;
end

