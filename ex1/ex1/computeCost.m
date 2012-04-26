function J = computeCost(inputData, expectedResult, testParameters)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
numInputs = length(inputData); % number of training examples

% You need to return the following variables correctly 
J = 0;
totalCost = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


for inputIndex = 1:numInputs,
testResult = testParameters' * inputData(inputIndex);
cost = (sum(testResult) - expectedResult(inputIndex)).^2;
totalCost += cost;
end;

J = totalCost / (2*numInputs);

% =========================================================================

end
