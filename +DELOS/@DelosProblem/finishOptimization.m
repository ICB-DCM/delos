function this = finishOptimization(this, Optimizer, Results, iteration, funCount)
    % Assign results from optimization
    this.initObj    = Results.objectiveTrace(1);
    this.finalPar   = Optimizer.curPar;
    this.finalObj   = Optimizer.curJ;
    this.finalGrad  = Optimizer.curG;
    this.iterCount  = iteration;
    this.funCount   = funCount;
    this.exitflag   = Optimizer.converged;
    
    % Recompute objective function value at final parameter on whole batch,
    % if minibatching mode was used
    if Optimizer.minibatching
        % Count, how many datapoints were used
        usedData = numel(this.miniBatchIndices{1});
        for iBatch = 2 : iteration
            usedData = usedData + numel(this.miniBatchIndices{iBatch});
        end
        
        % Assign results
        Optimizer = Optimizer.callObjectiveFunction(this, this.dataSetIndices, 1);
        this.finalObj = Optimizer.curJ;
        this.epochCount = ceil(usedData / numel(this.dataSetIndices));
    else
        this.epochCount = iteration;
    end
end