function this = restrictParameters(this, borders)
% The function restriction makes sure that no parameter bounds are
% violated. For this purpose, it resets the parameters to values 
% inside the bounds, if the optimizer proposes a point outside.

    % Correct parameters, if the bounds were violated
    this.curPar = min(max(this.curPar, borders(:,1) + 1e-8), borders(:,2) - 1e-8);

    % Gradient projection, if necessary
    % this.curG = this.curG;
end