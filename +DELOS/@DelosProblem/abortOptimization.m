function this = abortOptimization(this, Optimizer, Results, iteration, funCount)
    % Assign results from optimization
    this.initObj    = Results.objectiveTrace(1);
    this.finalPar   = Optimizer.curPar;
    this.finalObj   = Optimizer.curJ;
    this.finalGrad  = Optimizer.curG;
    this.iterCount  = iteration;
    this.funCount   = funCount;
    
    if ~Optimizer.acceptStep
        this.exitflag   = -1;
    elseif Optimizer.trScale < 1e-16
        this.exitflag   = -2;
    else
        this.exitflag   = -3;
    end
    
    if Optimizer.minibatching
        % Count, how many datapoints were used
        usedData = numel(this.miniBatchIndices{1});
        for iBatch = 2 : iteration
            usedData = usedData + numel(this.miniBatchIndices{iBatch});
        end
        
        % Assign result
        this.epochCount = ceil(usedData / numel(this.dataSetIndices));
    else
        this.epochCount = iteration;
    end
end