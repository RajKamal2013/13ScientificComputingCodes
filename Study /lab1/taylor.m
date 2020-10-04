function Y=taylor()
x=0:pi/20:2*pi;
y=x-((x.^3)/(factorial(3)))+((x.^5)/(factorial(5)))-((x.^7)/(factorial(7)))+((x.^9)/(factorial(9)));
plot(x,y,'-ro',x,sin(x),'-b')
hleg1=legend('f(x)','sin(x)');
end