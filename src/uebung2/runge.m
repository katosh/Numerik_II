v0=[1 ; 1];
tspan = [0 2];

[t,def] = ode45('veins',tspan,v0);

tau=t(2)-t(1);
    
x=cumsum(tau*def')';
    
plot(x(:,1),x(:,2));
xlabel('x(t)');
ylabel('y(t)');
