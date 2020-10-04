function Z=dirichlet3(p,q,r,f,a,b,x0,x1,z)
format long 
h=(x1-x0)/10;
n=9;
x=zeros(11,1);
for i=1:11
    x(i)=x0+(i-1)*h;
end

A=zeros(n);
s=zeros(n,1);
Y=zeros(n,1);
for i=2:8
    A(i,i-1)=-((p(x(i+1))/h^2)+q(x(i+1))/2*h);
    A(i,i)=(2*p(x(i+1))/h^2)+r(x(i+1));
    A(i,i+1)=(-1*p(x(i+1))/h^2)+q(x(i+1))/2*h;
    s(i,1)=f(x(i+1));
end
A(1,1)=(2*p(x(2))/h^2)+r(x(2));
A(1,2)=(-1*p(x(2))/h^2)+q(x(2))/2*h;
A(9,8)=-((p(10)/h^2)+q(x(10))/2*h);
A(9,9)=(2*p(10)/h^2)+r(x(10));
s(1,1)=f(x(2))+((p(2)/h^2)+q(x(2))/2*h)*a;
s(9,1)=f(x(10))-(((-1*p(10)/h^2)+(q(x(10))/2*h))*b);
X=A\s;
disp('X(i)-----Y(i)----error');
Y=zeros(n,1);

error=zeros(n,1);
for i=1:8
    Y(i)=z(x(i+1));
    error(i)=Y(i+1)-X(i+1);
end  
Z=max(error);
B=[x(2:10,1) X Y error];
end
