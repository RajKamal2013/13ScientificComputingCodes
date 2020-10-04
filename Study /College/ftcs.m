function X = ftcs(p,f,g1,g2,x0,xn,t0,tn,k,h,z )
format short
n2=(tn-t0)/k+1;
n1=(xn-x0)/h+1;
u=zeros(n2,n1);
x=zeros(n1,1);
y=zeros(n2,1);
for i=1:n1
    x(i,1)=x0+(i-1)*h;
end
for i=1:n2
    t(i,1)=t0+(i-1)*k;
end
for i=1:n1
    u(1,i)=f(x(i,1));
end
for i=1:n2
    u(i,1)=g1(t(i,1));
    u(i,n1)=g2(t(i,1));
end
for i=2:n2
    for j=2:(n1-1)
        u(i,j)=p(x(j,1),t(i,1))*(u(i-1,j+1)+u(i-1,j-1)-2*u(i-1,j))*k/(h*h)+u(i-1,j);
    end
end
A=zeros(n2,n1);
for i=1:n2
    for j=1:n1
        A(i,j)=z(x(j,1),t(i,1));
    end
end
A
X=u;


end

