function [J, grad] = costFunctionReg(theta, X, y, lambda)


m = length(y);
h = sigmoid(X*theta);

J = ((-y)' * log(h) - (1 - y)' * log (1 - h));
J = J / m;
J = J + lambda .* sum(theta(2:length(theta),:) .^ 2) ./ (2 * m) ;

grad = (1 / m) * X' * (h-y);
tmp = grad(1);
grad = grad + lambda * theta / m;
grad(1)=tmp;

end