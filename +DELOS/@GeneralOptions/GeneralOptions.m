classdef GeneralOptions < matlab.mixin.CustomDisplay
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS
    
    properties ( GetAccess = 'public', SetAccess = 'protected' )
        % maximum number of iterations
        maxIter = 1e3;
        
        % maximum number of function evaluations
        maxFunEvals = 1e4;
        
        % Use minibatching (stochastic) mode?
        minibatching = true;
        
        % Barrier function for box-constraints
        barrier = 'none';
        
        % Restriction to box-constraints, if barrier is not enough?
        restriction = true;
        
        % Size of dataset
        dataSetSize;
        
        % Size of one mini batch
        miniBatchSize;
        
        % Should DeLOS report the progress?
        % Possible options: 'console', 'file', 'off'
        display = 'console';
        
        % File handle, if DeLOS should report progress in a file
        displayHandle = 1;
        
        % After how many iteraions should DeLOS report the progress
        reportInterval = 1;
        
        % Learning rate
        learningRate = [];
    end
    
    methods
        function output = GeneralOptions()
        end
       
        function this = generateLearningRate(this)
            this.learningRate = zeros(this.maxIter, 1);
            for iStep = 1 : this.maxIter
                tmpFactor = min(1, iStep/this.tau);
                this.learningRate(iStep) = ((1 - tmpFactor) * this.etaMax + tmpFactor * this.etaMin);
            end
        end
        
        function this = setLearningRate(this, learningRate)
            this.learningRate = learningRate;
        end
    end

end

