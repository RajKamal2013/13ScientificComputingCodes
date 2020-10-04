function [A B C D]=newtoncotes()
format long e
a=[0,pi/4];
h=(a(2)-a(1))/1;

%newton-cotes for n=1
for i=1:2
    b(i)=a(1)+(i-1)*h;
end
r=b(2)-b(1);
sum=(sin(b(1))+sin(b(2)));
sum=sum*r/2;
display('newtoncotes for n=1')
sum
error=sum-0.29289322;
display('error in newton-cotes');
error

%newton-cotes for n=2
h=(a(2)-a(1))/2;
for i=1:3
    b(i)=a(1)+(i-1)*h;
end
r=b(2)-b(1);
sum1=(sin(b(1))+4*sin(b(2))+sin(b(3)));
sum1=sum1*r/3;
display('newton-cotes for n=2');
sum1
error=sum1-0.29289322;
display('error in newton-cotes');
error

%newton-cotes for n=3
h=(a(2)-a(1))/3;
for i=1:4
    b(i)=a(1)+(i-1)*h;
    y(i)=sin(b(i));
end
r=b(2)-b(1);
sum2=(y(1)+3*y(2)+3*y(3)+y(4))*3*r/8;
display('newton-cotes for n=3');
sum2
error=sum2-0.29289322;
display('error in newton-cotes');
error

%newton-cotes for n=4
h=(a(2)-a(1))/4;
for i=1:5
    b(i)=a(1)+(i-1)*h;
    y(i)=sin(b(i));
end
r=b(2)-b(1);
sum3=(7*y(1)+32*y(2)+12*y(3)+32*y(3)+7*y(4))*2*r/45;

display('newton-cotes for n=4');
sum3
error=sum3-0.29289322;
display('error in newton-cotes');
error
end

    
