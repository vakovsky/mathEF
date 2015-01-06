function ff=primer2
n=20; h=0.1;
x(1)=0; y(1)=1;
for i=1:n
    x(i+1)=x(i)+h;
    k1=fun(x(i),y(i));
    k2=fun(x(i)+h/2,y(i)+h*k1/2);
    k3=fun(x(i)+h/2,y(i)+h*k2/2);
    k4=fun(x(i)+h,y(i)+h*k3);
    y(i+1)=y(i)+h*(k1+2*k2+2*k3+k4)/6;
end;
z(1)=1;
for i=1:n
    k1=fun(x(i),y(i));
    k2=fun(x(i)+h,y(i)+h*k1);
    z(i+1)=z(i)+h*(k1+k2)/2;
end;
t=0:0.05:2;
%w=3-2*t+t.^2-2*exp(-t);
%plot(x,y,'-x',x,z,'-*',t,w);
plot(x,y,'-x',x,z,'-*');
axis([0 2 0 180]);
%plot(x,y,'-x');
%plot(x,z,'-*');
ff=[x',y'];

function f=fun(x,y)
%f=-y+x^2+1;
f=(x+1)*(y+2);
%f=x-y;
%f=x*y+2*x-y+1;