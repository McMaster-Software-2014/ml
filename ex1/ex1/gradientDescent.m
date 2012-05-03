function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %



		%printf("%d = [%0.02f, %0.02f] = %0.02f\n", iter, theta(1,1), theta(2,1), computeCost(X,y,theta));

		%dtheta = theta;
		%dtheta(1,1) = alpha * (1/m) * sum(((X*theta)-y)*X(:,1));
		%dtheta(2,1) = alpha * (1/m) * sum(((X*theta)-y)*X(:,2));
		%theta = theta - dtheta;

		theta = theta - alpha * (1/m) * X'*((X*theta)-y);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
