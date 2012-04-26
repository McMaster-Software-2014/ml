function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
ratio = 1/(2*m);

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


for j = 1:m,
prediction = theta' * X(j);
distanceSquared = (sum(prediction) - y(j)).^2;
J = J + distanceSquared;
end;

J = ratio * J;


% =========================================================================

end
