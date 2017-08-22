function J = computeCost(X, y, theta)
%COMPUTECOST Calcula o Custo da regressão com o parâmetro theta
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

%
m = length(y); % numero de exemplos de treinamento
C = X * theta;
% Voce deve preencher a variável J adequadamente
J = 0;

D=C-y;

J= (1/2*m)*(D'*D);
% =========================================================================

end
