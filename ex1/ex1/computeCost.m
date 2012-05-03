function J = computeCost(inputData, expectedResults, testParameters)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
numInputs = length(inputData); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

testResults = inputData * testParameters;
totalCost = testResults - expectedResults;
costSquared = totalCost.^2;
J = sum(costSquared) / (2*numInputs);

% =========================================================================

end
