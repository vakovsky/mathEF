function ff=myprimer1
[T,Y] = ode45(@odef,[0 8],[3 2]);
plot(T,Y(:,1),'-o')
ff=[T(:,1),Y(:,1)];
function dy = odef(t,y)
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = -5*y(1)-2*y(2)+10*t-1;