function [thetaRes, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
    m = length(y);
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        h = X * theta;
        theta = theta - (alpha/m) * ((h - y)' * X)';
        J_history(iter)=computeCost(X, y, theta);
    end

    thetaRes = theta;
end;
