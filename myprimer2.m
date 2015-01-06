function ff=myprimer2
[T,Y] = ode45(@odef,[0 2],[1]);
plot(T,Y(:,1),'-or')
ff=[T(:,1),Y(:,1)];
function dy = odef(t,y)
dy = zeros(1,1);
dy(1) = (t+1)*(y+2);
%dy(1)=-y(1)+x^2+1;