function p = predict(theta, X)

h=sigmoid(X*theta);
p=h>=0.5;

end
