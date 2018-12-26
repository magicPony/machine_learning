function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C_res = 0.01;
sigma_res = 0.1;
i = 0;
min_error = 1e9;

for C = [0.01 0.03 0.1 0.3 1, 3, 10 30],
	for sigma = [0.01 0.03 0.1 0.3 1, 3, 10 30],
		i = i + 1;
		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
		predict = svmPredict(model, Xval);
		current_error = mean(double(predict ~= yval))

		if min_error <= current_error
			continue;
		end;

		min_error = current_error;
		C_res = C;
		sigma_res = sigma;
		min_error
	end;
end;

C = C_res;
sigma = sigma_res;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
