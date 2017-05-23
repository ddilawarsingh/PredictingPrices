function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

J = 0;

% ====================== CODE HERE ======================

for i=1:m
    X(i,1)=X(i,1)*theta(1);
    X(i,2)=X(i,2)*theta(2);
end
y=-1*y;
X=[X,y];
temp=sum(X,2);
temp=temp.^2;
J=sum(temp);
J=J/(2*m);

% =========================================================================

end
