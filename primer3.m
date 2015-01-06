function ff=primer3
n=10; h=0.2;
x(1)=0; y(1)=1; z(1)=-1;
for i=1:n
    k1=fun(x(i),y(i),z(i));
    k2=fun(x(i)+h/2, y(i)+k1(1)*h/2, z(i)+k1(2)*h/2);
    k3=fun(x(i)+h/2, y(i)+k2(1)*h/2, z(i)+k2(2)*h/2);
    k4=fun(x(i)+h, y(i)+k3(1)*h, z(i)+k3(2)*h);
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+h*(k1(1)+2*k2(1)+2*k3(1)+k4(1))/6;
    z(i+1)=z(i)+h*(k1(2)+2*k2(2)+2*k3(2)+k4(2))/6;
end;
t=0:0.05:2;
w=exp(-t);
plot(t,w,'-',x,y,'*');
%grid on
ff=[x',y'];

function f=fun(x,y,z)
%f(1)=z;
%f(2)=y;
f(1)=z;
f(2)=y;