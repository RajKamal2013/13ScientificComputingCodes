function y=lag_poly(a,b,d)
n=[a:0.1:b];
x=[0.0 0.6 1.2];
y=cos(x);
k=ones(n);
p=zeros(n,1);
for t=1:length(n)
    for i=1:d
        k(i)=y(i)*k(i);
        for j=1:d
            if j==i
                k(i)=k(i)*1
            end
                k(i)=k(i)*((n(t)-x(j))/x(i)-x(j));
        end
    end
for i=1:d
    p(t)=p(t)+k(i);
end
end
plot(n,p,'r');
legend('cos(x)');
end

    