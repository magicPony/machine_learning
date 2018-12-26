function [X_norm, mu, sigma] = featureNormalize(X)
	X_norm = X;
	mu = mean(X,1);
	sigma = std(X,0,1)

	X_norm = (X .- mu) ./ sigma;
	X_norm(:,1) = ones(size(X)(1))(:,1)

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
end
