function Results = delos(varargin)
    % noodles is the function to call for optimization with Noodles.
    %
    % Input:
    % objfun      : objective function to be minimized
    % x0          : starting point
    % options     : NoodleOptions, containing all optimization options
    %
    % Output:
    % results     : NoodleResults, containing all relevant optimization results

    
    %% Setting up the problem and calling the optimization
    
    % Handle inputs
    if (nargin < 5)
        % Use default options
        Options = DelosOptions();

        if (nargin < 4)
            % Create initial guess
            initGuess = 0.5 * (lowerBounds + upperBounds);

            if (nargin < 3)
                % Not enough input arguments
                error('Not enough input arguments! DeLOS needs at least 3 input arguments (cost function, lower bounds, upper bounds) to work.');
            end
        else
            initGuess = varargin{4};
        end
    else
        initGuess = varargin{4};
        Options = varargin{5};
    end

    % Assign inputs
    objFun = varargin{1};
    lowerBounds = varargin{2};
    upperBounds = varargin{3};

    % Handle the options for DeLOS
    Options = DELOS.setupOptions(Options);
        
    if (nargin < 6)
        % Generate minibatches, if necessary
        if Options.minibatching
            [minibatches, dataset] = DELOS.generateMiniBatches(...
                Options.miniBatchSize, ...
                Options.dataSetSize, ...
                Options.maxIter, ...
                Options.maxFunEvals);
        else
            minibatches = [];
            dataset = [];
        end
    else
        % Assign input
        minibatches = varargin{6};

        if (nargin < 7)
            % Get whole dataset 
            dataset = sort(minibatches{1});
            for iBatch = 2 : length(minibatches)
                dataset = union(dataset, minibatches{iBatch});
            end
        else
            dataset = varargin{7};
        end
    end
    
    % Initialize the problem object for DeLOS
    Problem = DELOS.DelosProblem(objFun, initGuess(:), lowerBounds(:), upperBounds(:), minibatches, dataset);
    
    % Run optimization
    Results = Problem.runOptimization(Options);

end