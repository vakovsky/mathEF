function ff=myprimer3
[T,Y] = ode45(@odef,[0 2],[1 -1]);
plot(T,Y(:,1),'-o')
%grid on
ff=[T(:,1),Y(:,1)];
function dy = odef(t,y)
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = y(1);

