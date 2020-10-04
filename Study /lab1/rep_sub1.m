function X=rep_sub1()
x=10000;
format long;
y=0;
for i=1:100000
    y=y+0.1;
end
X=x-y;
disp('the final value of continuos subtraction is');
display(X);
end
