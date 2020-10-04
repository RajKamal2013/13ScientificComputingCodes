function X=rep_sub2()
x=10000;
format long;
y=0;
for i=1:80000
    y=y+0.125;
end
X=x-y;
display('the value after repeated subtraction');
disp(X)
end