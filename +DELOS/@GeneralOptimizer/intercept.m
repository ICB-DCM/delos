function [this, attempt] = intercept(this, Problem, Options, iteration)

    % Counter for how often optimizer tried to catch up the 
    % parameter update
    attempt = 1;

    while (~this.acceptStep && attempt <= 10)
        % reset old state again
        this = this.resetOldState();

        % Shrinken step size
        this.trScale = this.trScale / 4;

        % Redo last step
        this = this.doParameterStep(Options, iteration);

        % Restrict parameters to feasible space if necessary
        this = this.restrictParameters([Problem.lowerBounds, Problem.upperBounds]);

        % Compute objective function value and gradient
        this = this.callObjectiveFunction(Problem, iteration, 1);
        
        % Could the parameter step be caught up?
        this = checkStep(this);
        if ~this.acceptStep
            attempt = attempt + 1;
        else
            this = this.callObjectiveFunction(Problem, iteration, 2);
            this = checkStep(this);
            attempt = attempt + 1;
            if ~this.acceptStep
                this.acceptStep = false;
            end 
        end
    end
    
end