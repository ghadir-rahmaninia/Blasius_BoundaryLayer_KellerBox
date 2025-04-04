guess = 0.4696;
[eta, f] = ode45(@blasius, (0:0.1:6), [0;0;guess]);

% plot(eta, f)
plot(eta,f(:,1),'-r', eta,f(:,2),'-b', eta,f(:,3),'-g')
title('Blasius');
xlabel('\eta')
ylabel('f1 , f2 , f3')
axis([0, 6, 0, 6])
legend('f1', 'f2', 'f3')
grid on

function dfdeta = blasius(~, f)
    dfdeta = [f(2); f(3); -f(1)*f(3)];
end
