function [n,DD] = newtonp(x,y)
N = length(x)-1;
DD = zeros(N + 1,N + 1);
DD(1:N + 1,1) = y';
for k = 2:N + 1
    for m = 1: N + 2 - k 
         DD(m,k) = (DD(m + 1,k - 1) - DD(m,k - 1))/(x(m + k - 1)- x(m));
    end
end
a = DD(1,:)
n = a(N+1); 
for k = N:-1:1
n = [n a(k)] - [0 n*x(k)] ;
end
xx=[0:0.1:10];
yy=polyval(n,xx);
k=ones(N+1);
p=a(1);

for i=2:N+1
    k(i)=a(i)*k(i);
    for j=1:i-1
        k(i)=k(i)*(0.2-x(j));
    end
    p=p+k(i);
end
p
    

plot(xx,yy,'r');
end

