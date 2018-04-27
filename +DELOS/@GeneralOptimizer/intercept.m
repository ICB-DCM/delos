function [this, attempt] = intercept(this, Options, bounds)

    % Counter for how often optimizer tried to catch up the 
    % parameter update
    attempt = 1;

    while (~this.acceptStep || attempt <= 10)
        % reset old state again
        this = this.resetOldState(this);

        % Shrinken step size
        this.trScale = this.trScale / 4;

        % Redo last step
        this = this.doParameterStep(this, Options);

        % Restrict parameters to feasible space if necessary
        this = this.restrictParameters(bounds);

        % Could the parameter step be caught up?
        this = checkStep(this);
        if ~this.acceptStep
            attempt = attempt + 1;
        end
    end
end