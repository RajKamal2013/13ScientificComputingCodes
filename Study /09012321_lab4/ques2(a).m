function quad_poly(a,b)
x(1)=0.0;
x(2)=0.6;
x(3)=1.2;
y=cos(x);
n=[a:0.1:b];
p=zeros(size(n));
for t=1:length(n)
    for k=1:3
    for i=1:3
        j=k+1;
        if(k+1>3)
            j=1
            p(t)=p(t)*((n(i)-x(j)/x(i)-x(j);
            j++;
        end
    end
    p(k)=p(k)*y(k);
    end
end
end

