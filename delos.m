function Results = delos(objFun, lowerBounds, upperBounds, initGuess, Options)
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
        end
    end

    % Initialize the problem object for DeLOS
    Problem = DELOS.DelosProblem(objFun, initGuess(:), lowerBounds(:), upperBounds(:));
    
    % Handle the options for DeLOS
    Options = DELOS.setupOptions(Options);
    
    % Run optimization
    Results = Problem.runOptimization(Options);

end