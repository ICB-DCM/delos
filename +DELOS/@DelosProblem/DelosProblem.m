classdef DelosProblem < matlab.mixin.CustomDisplay
    % DeLOS results objects carry all information from the optimization
    % process
    
    properties ( GetAccess = 'public', SetAccess = 'private' )
        % objective function handle
        objectiveFun;
        
        % lowerBounds of parameter space
        lowerBounds;
        
        % upperBounds of parameter space
        upperBounds;
        
        % number of model parameters
        nPar;
        
        % initial parameter vector
        initPar;
        
        % initial objective value
        initObj = inf;
        
        % final parameter vector
        finalPar;
        
        % final objective value
        finalObj;
        
        % final objective gradient
        finalGrad;
        
        % number of employed optimization steps
        iterCount;
        
        % number of employed objective function evaluation
        funCount;
        
        % number of employed epochs
        epochCount;
        
        % initial cpu time
        initCPUTime;
        
        % exitflag of the optimizer
        exitflag = nan; 
        
        % set of mini batches
        miniBatchIndices;
        
        % set of data indices
        dataSetIndices;
    end
    
    methods
        function Problem = DelosProblem(inObjFun, inPar, inLowerBounds, inUpperBounds, inMiniBatchIndices, inDataSet)
            % DelosResults contains the information coming from an
            % optimization with DeLOS.
            %
            % Parameters:
            %  input: a DelosProblem object
            %
            % Return values:
            %  Results: DelosResults object
            
            % Assign results from optimization
            Problem.objectiveFun     = inObjFun;
            Problem.initCPUTime      = cputime;
            Problem.lowerBounds      = inLowerBounds;
            Problem.upperBounds      = inUpperBounds;
            Problem.nPar             = length(inPar);
            Problem.initPar          = inPar;
            Problem.miniBatchIndices = inMiniBatchIndices;
            Problem.dataSetIndices   = inDataSet;
        end
        
        function Optimizer = setupOptimizer(this, Options)
            % Choose correct optimizer
            switch Options.algorithm
                case 'adadelta'
                    Optimizer = DELOS.AdadeltaOptimizer();
                case 'adam'
                    Optimizer = DELOS.AdamOptimizer();
                case 'rmsprop'
                    Optimizer = DELOS.RmsPropOptimizer();
                case 'rmspropnesterov'
                    Optimizer = DELOS.RmsPropNesterovOptimizer();
                case 'retbfgs'
                    Optimizer = DELOS.RetBfgsOptimizer();
            end
            
            % Initialize Optimizer with information about parameter number
            Optimizer = Optimizer.initialize(this.nPar, Options.minibatching);
            
            % Set current parameter vector
            Optimizer.curPar = this.initPar;
        end
        
        function Results = setupResults(this, Options)
            % some stuff to come
            Results = DELOS.DelosResults;
            
            % set up history variables
            Results.objectiveTrace = nan(Options.maxIter, 1);
            Results.normGradTrace = nan(Options.maxIter, 1);
            Results.parameterChangeTrace = nan(Options.maxIter, 1);
            Results.parameterTrace = nan(this.nPar, Options.maxIter);
        end
        
        function Results = saveResults(this, Results)
            % Assign results from optimization
            Results.cpuTime       = cputime - this.initCPUTime;
            Results.iterCount     = this.iterCount;
            Results.funCount      = this.funCount;
            Results.epochCount    = this.epochCount;
            Results.exitflag      = this.exitflag;
            Results.finalPar      = this.finalPar;
            Results.finalObj      = this.finalObj;
            Results.finalGradNorm = norm(this.finalGrad);
            Results.finalGrad     = this.finalGrad;
            Results.initPar       = this.initPar;
            Results.initObj       = this.initObj;
        end
        
    end

end

