function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% Initialize variables 
sum1 = 0;
sum2 = zeros(1, n);
% for-loop for all centroids
for i = 1:K
	% for-loop for all X-elements
	for j = 1:m
		% If X-elements is assigned to centroid i then add it.
		if idx(j) == i
			sum1 += 1
			sum2 += X(j,:)
		end
	end
	% Update centroid
	centroids(i, :) = (1/sum1)*sum2;
	% Initialize again the variables
	sum1 = 0;
	sum2 = zeros(1, n);
end

% =============================================================


end

