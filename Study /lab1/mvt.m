function Z=mvt()
x=0:0.025:2.5;
y=sin(x)+(1/3*sin(3*x));
plot(x,y);
Q=quad(@myfun,0,2.5);
Z=Q/2.5;
display(Z);
end
