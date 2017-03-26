function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
nx = size(X,2);
J = (1.0/m) * sum((-y.* log(sigmoid(X*theta)) - (1-y).*log(1-sigmoid(X*theta)))) + lambda/2.0/m*(theta(2:nx)'*theta(2:nx));
grad = (1.0/m) * X' * (sigmoid(X*theta)-y) + (lambda/m)*theta;
grad(1) = (1.0/m) * X(:,1)' * (sigmoid(X*theta)-y);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
