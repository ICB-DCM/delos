function Results = runOptimization(this, Options)  
    %% Preparation of optimization
    % Initialize the optimization problem
    Optimizer = this.setupOptimizer(Options);
    
    % Setup output in console or file if wanted
    Optimizer.setupOutput(Options);
    
    % Setup object for saving optiization results
    Results = this.setupResults(Options);
    
    % Loop over optimization steps
    for iStep = 1 : Options.maxIter
        %% Compute objective function value and gradient for curPar
        % Make a Nesterov moment step if the given optimizer needs it
        if Optimizer.nesterov
            Optimizer = Optimizer.lookAhead(Options, iStep);
        end
        
        % Compute gradient and Hessian to set up he subproblem
        Optimizer = Optimizer.callObjectiveFunction(this, iStep, 2);

        % Add the barrier function to the objective value and the gradient
        if (~strcmp(Options.barrier, 'none'))
            Optimizer = Optimizer.addBarrier(Options, iStep, 2, [this.lowerBounds, this.upperBounds]);
        end
        
        %% Check, if objective function was evaluable
        % Check, if there was a problem with cost function evaluation
        Optimizer = Optimizer.checkStep();
        
        if ~Optimizer.acceptStep
            % Try to resolve the problem with the parameter step
            Optimizer = Optimizer.intercept(Options, [this.lowerBounds, this.upperBounds]);
        
            % check, if step could be recaptured
            if ~Optimizer.acceptStep
                Optimizer.abortOptimization();
            	break;
            end
        end
        
        %% Update the results and finalize step
        % Update short-term optimization history 
        Optimizer.updateHistory();
        
        % Save the last parameter update
        Results = Optimizer.saveStep(Results, iStep);
        
        % Print information of of the current step
        Optimizer.printOutput(Options, Results, iStep);
        
        % Check if convergence criteria are met
        Optimizer = Optimizer.checkConvergence(Options);
        if Optimizer.converged
            break;
        end
        
        %% Do the parameter update according to the algorithm
        % Try to take a new parameter step
        Optimizer = Optimizer.doParameterStep(Options, iStep);
        
        % Restrict parameters to feasible space if necessary
        Optimizer = Optimizer.restrictParameters([this.lowerBounds, this.upperBounds]);
    end

    %% Save results and finalize optimization
    % finish up optimization
    this = this.finishOptimization(Optimizer, Results, iStep);
    
    % Create output results
    Results = this.saveResults(Results);
    
    % Write last line of output
    Optimizer.finishOutput(Options, Results, iStep);
    
end