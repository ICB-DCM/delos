function this = callObjectiveFunction(this, Problem, iteration, nOutput)
    
    % Get the current mini batch
    if this.minibatching
        if (numel(iteration) == 1)
            curMinibatch = Problem.miniBatchIndices{iteration};
        else
            curMinibatch = iteration;
        end
    end
        
    % Compute cost function value and maybe gradient
    if this.minibatching
        % If mini batch mode should be used, the batch indices must
        % be passed to the cost function
        if (nOutput == 1)
            newJ = Problem.objectiveFun(this.curPar, curMinibatch);
        elseif (nOutput == 2)
            [newJ, newG] = Problem.objectiveFun(this.curPar, curMinibatch);
        else
            error('Call to objective function with too many outputs!');
        end
    else
        % Deterministic mode
        if (nOutput == 1)
            newJ = Problem.objectiveFun(this.curPar);
        elseif (nOutput == 2)
            [newJ, newG] = Problem.objectiveFun(this.curPar);
        else
            error('Call to objective function with too many outputs!');
        end
    end

    % Assign new values
    this.oldJ = this.curJ;
    this.curJ = newJ;
    if (nOutput == 2)
        this.oldG = this.curG;
        this.curG = newG;
    end
end