function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Implementa o método de descida do gradiente para aprender os parâmentros theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha


m = length(y); % number exemplos de treinamento
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== COLOQUE SEU CÓDIGO AQUI ======================
    % Instruções: Calcule apenas um passo do algoritmo
    %


    x = X(:,2);
    h = theta(1) + (theta(2)*x);
    D=h-y;
    deriva1 = (1/m)*sum(D);
    deriva2 = (1/m)*sum(D'*x);
    theta(1)=theta(1)-alpha*deriva1;	
    theta(2)=theta(2)-alpha*deriva2;
    
    % ============================================================

    % Salva o custo calculado em cada iteração the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

    % Descomente esta linha para ver o custo calculado
    % disp(J_history(iter));
end

  disp(min(J_history));
end
