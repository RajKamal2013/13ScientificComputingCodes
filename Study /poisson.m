function X = poisson(f,p,q,r,s,x0,xn,y0,yn,g,h)
n1=((xn-x0)/h)+1;
n2=((yn-y0)/h)+1;
x=zeros(n1,1);
y=zeros(n2,1);
x(1,1)=x0;
y(1,1)=y0;
x(n1,1)=xn;
y(n2,1)=yn;

for i=1:n1
    x(i,1)=x0+(i-1)*h;
end

for i=1:n2
    y(i,1)=y0+(i-1)*h;
end
x 
y
u=zeros(n1,n2);
for i=1:n1
    u(i,1)=p(x(i,1));
    u(i,n2)=q(x(i,1)); 
end
for i=1:n2
    u(1,i)=r(y(i,1));
    u(n1,i)=s(y(i,1));
end
d=1;
k=0;
U=u;
tol=0.00001;
while d>tol
    for i=2:(n1-1)
       for j=2:(n2-1)
            U(i,j)=-((h*h/4)*f(x(i,1),y(j,1)))+(u(i-1,j)+u(i+1,j)+u(i,j-1)+u(i,j+1))/4; 
       end
    end
d=max(max(abs(U-u)));    
u=U;
end
A=zeros(n1,n2);
X=u;

for i=1:n1
    for j=1:n2
        A(i,j)=g(x(i,1),y(j,1));
    end
end
A
end

