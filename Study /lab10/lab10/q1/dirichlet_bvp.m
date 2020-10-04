function Z=dirichlet1(p,q,r,f,a,b,x0,x1,z,c)

format long

h=(x1-x0)/(c*10);
n=c*10-1;
x=zeros((c*10+1),1);
for i=1:(c*10+1)
    x(i)=x0+(i-1)*h;
end


A=zeros(n);
s=zeros(n,1);
Y=zeros(n,1);

for i=2:c*10-2
    A(i,i-1)=-((p(x(i+1))/h^2)+q(x(i+1))/2*h);
    A(i,i)=(2*p(x(i+1))/h^2)+r(x(i+1));
    A(i,i+1)=(-1*p(x(i+1))/h^2)+q(x(i+1))/2*h;
    s(i,1)=f(x(i+1));
end

A(1,1)=(2*p(x(2))/h^2)+r(x(2));
A(1,2)=(-1*p(x(2))/h^2)+q(x(2))/2*h;
A(c*10-1,c*10-1)=-((p(c*10)/h^2)+q(x(c*10))/2*h);
A(c*10-1,c*10-1)=(2*p(c*10)/h^2)+r(x(c*10));
s(1,1)=f(x(2))+((p(2)/h^2)+q(x(2))/2*h)*a;
s(c*10-1,1)=f(x(c*10))-(((-1*p(c*10)/h^2)+(q(x(c*10))/2*h))*b);
X=A\s;
disp('X(i)-----Y(i)----error');
Y=zeros(n,1);

error=zeros(n,1);
for i=1:c*10-2
    Y(i)=z(x(i+1));
    error(i)=Y(i+1)-X(i+1);
end 
Y(n,1)=z(x(c*10));
%U=zeros(c*10+1,1);
U(1)=a;
U(2:c*10)=X;
U(c*10+1)=b;
%V=zeros(c*10+1,1);
V(1)=a;
V(2:c*10)=Y;
V(c*10+1)=b;

Z=max(error);
P(1:n+2)=x;
plot(P,U,'b',P,V,'r');
legend('U(X(i))','U(i)');
B=[x(2:c*10,1) X Y error];
end
