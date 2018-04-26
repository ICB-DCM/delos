function this = checkStep(this)

    % Check if the objective function was evaluable at current parameter
    if (~isfinite(this.curJ) || ~isfinite(norm(this.curG)))
        this.acceptStep = false;
    else
        this.acceptStep = true;
        
        % increase trust-region
        this.trScale = min(1.0, this.trScale * 1.15);
    end

end