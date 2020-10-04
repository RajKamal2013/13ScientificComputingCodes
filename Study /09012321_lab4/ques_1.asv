function [t,error]=ques_one(a,b)
format long e
n=[a:.1:b];
y1=log(1+n);
y2=zeros(size(n));
for i=1:length(n)
    y2(i)=0.02957206*(n(i)^5)-0.12895295*(n(i)^4)+0.28249626*(n(i)^3)-0.48907554*(n(i)^2)+0.99910735*n(i);
end
error=[y1-y2];
arr=[y1' y2' error']

plot(n,y1,'r-')
hold on
plot(n,y2,'r*')
hold off
legend('f(x)','g(x)');
end

