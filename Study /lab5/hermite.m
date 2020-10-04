function X=hermite(x,y,z,p)
format long 
n=size(x);
k1=1;
k2=1;
k3=0;
X=0;
a=zeros(n,1);
b=zeros(n,1);
for i=1:n
    for j=1:n
        if(j~=i)
            k1=k1*(p-x(j,1));
            k2=k2*(x(i,1)-x(j,1));
            k3=k3+(1/(x(i,1)-x(j,1)));
        end
    end
    a(i,1)=k1/k2;
    b(i,1)=k3;
    k3=0;
end
c=zeros(n,1);
d=zeros(n,1);
for i=1:n
    c(i,1)=(1-(2*b(i,1)*(p-x(i,1))))*(a(i,1)*a(i,1));
    d(i,1)=(p-x(i,1))*(a(i,1)*a(i,1));
end
for i=1:n
    X=X+(y(i,1)*c(i,1) + z(i)*d(i,1));
end
X
end
