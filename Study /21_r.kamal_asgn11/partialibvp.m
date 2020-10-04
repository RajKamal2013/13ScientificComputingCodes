function [U,X,T,E,O,ge]=partialibvp(a1,b1,a2,b2,h1,h2)
%h1 is the step size of x coordinate
%h2 is the step size of t coordinate
%(a1,b1) is the interval of x coordinate
%a2 is the initial value of t coordinate
%b2 is the value of t coordinate upto which we want to find the value of function 
%enter the value of h1 ,h2,coefficient of Uxx (f) in such a way that for all the valuess of (x,t) h2*f/h1^2<=0.5
syms x t;
f=input('Enter the coefficient f of Uxx (when written in the form Ut-f*Uxx=0)in terms of x and t : ');
ti=input('Enter the boundary condition at initial boundary of x in terms of t : ');
tf=input('Enter the boundary condition at finaL boundary of x in terms of t : ');
xi=input('Enter the boundary condition at initial boundary of t in terms of x : ');
u=input('Enter the original solution in terms of (x,t)');
n1=(b1-a1)/h1;
n2=(b2-a2)/h2;
U=ones(n2+1,n1+1);
for i=1:n1+1
    X(i)=a1+h1*(i-1);
end
for i=1:n2+1
    T(i)=a2+h2*(i-1);
end
for i=1:n1+1
    x=X(i);
    U(1,i)=eval(xi);
end
for i=1:n2+1
    t=T(i);
    for j=1:n1+1
        x=X(j);
        O(i,j)=eval(u);
    end
end
for i=2:n2+1
    t=T(i);
    U(i,1)=eval(ti);
    U(i,n1+1)=eval(tf);
end
for i=2:n2+1
    t=T(i-1);
    for j=2:n1
        x=X(j);
        U(i,j)=eval(f)*(U(i-1,j+1)+U(i-1,j-1)-2*U(i-1,j))*h2/(h1*h1)+U(i-1,j);
    end
end
E=abs(U-O);
ge=max(max(E));