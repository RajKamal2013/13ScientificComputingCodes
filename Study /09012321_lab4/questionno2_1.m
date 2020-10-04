function questionno2_1(a,b)
n=(a:.01:b);
x(1)=0.0;
x(2)=0.6;
x(3)=1.2;
y(1)=cos(x(1));
y(2)=cos(x(2));
y(3)=cos(x(3));
p=zeros(size(n));
for i=1:length(n)
    p(i)=((n(i)-x(2))*(n(i)-x(3))/((x(1)-x(2))*(x(1)-x(3))))*y(1) + ((n(i)-x(1))*(n(i)-x(3))/((x(2)-x(1))*(x(2)-x(3))))*y(2) + ((n(i)-x(1))*(n(i)-x(2))/((x(3)-x(1))*(x(3)-x(2))))*y(3);
end
a=cos(n);
plot(n,a,'r');
hold on
plot(n,p,'g');