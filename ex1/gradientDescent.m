

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

diff=theta'.*X;
diff=sum(diff');
diff=diff';

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %disp(computeCost(X,y,theta));
    diff=theta'.*X;
    diff=sum(diff');
    diff=diff';
    
    su1=0;
    su2=0;
    for j=1:m
        su1=su1+((diff(j)-y(j))*X(j,1));
    end
    
    for j=1:m
        su2=su2+((diff(j)-y(j))*X(j,2));
    end
    
    su1=su1*(alpha/m);
    su2=su2*(alpha/m);
    temp1=theta(1)-su1;
    temp2=theta(2)-su2;
    theta(1)=temp1;
    theta(2)=temp2;
    




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %disp(J_history);
end

end
