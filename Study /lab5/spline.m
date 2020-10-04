function [P B C D]=spline(X,a,y,z)
n=length(X)-1;
h=zeros(n,1);
b=zeros(n,1);
c=zeros(n+1,1);
A=zeros(n+1);
B=zeros(n+1,1);
for i=1:n
    h(i,1)=X(i+1)-X(i);
end
A(1,1)=2*h(1,1);
A(1,2)=h(1,1);
for i=2:n
    A(i,i-1)=h(i-1,1);
    A(i,i)=2*(h(i-1,1)+h(i,1));
    A(i,i+1)=h(i,1);
    B(i,1)=3*(((a(i+1)-a(i))/h(i,1))-((a(i)-a(i-1))/h(i-1,1)));
 
end
A(n+1,n+1)=2*h(n,1);
A(n+1,n)=h(n,1);

B(1,1)=3*((a(2)-a(1))-y);
B(n+1,1)=3*z-(3*(1/h(n,1))*(a(n+1)-a(n)));
c=A\B;

for i=1:n
    b(i,1)=((a(i+1)-a(i))/h(i,1))-((h(i,1)/3)*(2*c(i,1)+c(i+1,1)));
    d(i,1)=(c(i+1,1)-c(i,1))/(3*h(i,1));
end
P=a
B=b
C=c
D=d
end

