function [U,X,Y,E,O,ge]=partialbvp(a1,b1,a2,b2,h,tol)
syms x y;
f=input('Enter the function f(x,y) in terms of x and y : ');
xi=input('Enter the boundary condition at initial boundary of y in terms of x : ');
xf=input('Enter the boundary condition at finaL boundary of y in terms of x : ');
yi=input('Enter the boundary condition at initial boundary of x in terms of y : ');
yf=input('Enter the boundary condition at finaL boundary of x in terms of y : ');
u=input('Enter the original solution in terms of (x,y)');
n1=(b1-a1)/h;
n2=(b2-a2)/h;
U=ones(n1+1,n2+1);
for i=1:n1+1
    X(i)=a1+h*(i-1);
end
for i=1:n2+1
    Y(i)=a2+h*(i-1);
end
for i=1:n1+1
    x=X(i);
    U(i,1)=eval(xi);
    U(i,n2+1)=eval(xf);
end
for i=1:n2+1
    y=Y(i);
    U(1,i)=eval(yi);
    U(n1+1,i)=eval(yf);
end
for i=1:n1+1
    x=X(i);
    for j=1:n2+1
        y=Y(j);
        O(i,j)=eval(u);
    end
end
Z=U;
d=1;
while(d>tol)
    for i=2:n1
        x=X(i);
        for j=2:n2
            y=Y(i);
            Z(i,j)=(U(i-1,j)+U(i,j+1)+U(i,j-1)+U(i+1,j))/4-eval(f)*h*h/4;
        end
    end
    d=max(max(abs(Z-U)));
    U=Z;
end
E=abs(U-O);
ge=max(max(E));