function J = computeCostMulti(X, y, theta)
	H = X * theta;
	J=H-y;
	J=J.^2;
	J=sum(J);
	J=J/2/size(X)(1);
end
