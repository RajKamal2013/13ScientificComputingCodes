function X=newton_fd(x,y,p)
format long;
n=length(x);
q=1;
r=y(1);
u=(p-x(1))/(x(2)-x(1));
FD=zeros(n+1,n);
FD(1:n,1)=y';
for j=2:n+1
    for i=1:n-j+1
        FD(i,j)=(FD(i+1,j-1)-FD(i,j-1));
    end
end
m=1;
for i=2:n
    m=m*(i-1);
    r=r+((u*q*FD(1,i))/m);
    q=1;
    for j=1:i-1
        q=q*(u-j);
    end
end
X=r
end