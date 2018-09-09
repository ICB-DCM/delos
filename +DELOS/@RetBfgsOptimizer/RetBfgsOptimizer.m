classdef RetBfgsOptimizer < DELOS.GeneralOptimizer
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS

    properties ( GetAccess = 'public', SetAccess = 'protected' )
        % current information on gradient
        curRetardedGradient;
        
        % current information on inverse Hessian
        curRetardedInvHessian;
        
        % current descent direction (stabilized gradient)
        curStabGradient;
        
        % current size of trust region
        curTrustRegion;
        
        % old information on gradient
        oldRetardedGradient;
        
        % old information on inverse Hessian
        oldRetardedInvHessian;
        
        % old descent direction (stabilized gradient)
        oldStabGradient;
    end
    
    methods
        function output = RetBfgsOptimizer()
        end
        
        function this = initialize(this, nPar, minibatching)
            % Initialize all general solver values
            this.curJ = inf;
            this.curG = zeros(nPar,1);
            this.oldJ = inf;
            this.oldG = zeros(nPar,1);
            this.minibatching = minibatching;
            
            % Initialize all solver specific values
            this.curRetardedGradient   = zeros(nPar,1);
            this.curRetardedInvHessian = eye(nPar);
            this.curStabGradient       = zeros(nPar,1);
            this.curTrustRegion        = inf;
            this.oldRetardedGradient   = zeros(nPar,1);
            this.oldRetardedInvHessian = eye(nPar);
            this.oldStabGradient       = zeros(nPar,1);
            this.nesterov = false;
        end
        
        function this = resetOldState(this)
            % reset old state again
            if isempty(this.oldPar)
                % Failed at inital point
                error('Objective function evaluation failed at initial point. Aborting optimization!')
            end
            this.curPar = this.oldPar;
            this.curJ   = this.oldJ;
            this.curG   = this.oldG;
            this.curRetardedGradient   = this.oldRetardedGradient;
            this.curRetardedInvHessian = this.oldRetardedInvHessian;
            this.curStabGradient       = this.oldStabGradient;
        end
        
        function this = doParameterStep(this, Options, iteration)
            % Idea of this retarded BFGS algorithm: 
            % The descent direction (negative gradient) is stabilized by a 
            % memory rate (mu). Furthermore, in order to compute an
            % inverse Hessian approximation via a BFGS update, a second, 
            % more stabilized gradient is stored, which uses a higher
            % memory rate (rho). The real update is based on a dogleg
            % algorithm (using the trust-region infromation) with the 
            % descent direction and the BFGS-like quasi-Newton step.

            % Initialize trust region in first step
            if iteration == 1
                this.curTrustRegion = Options.initialTrustRegion;
            end
            
            % Hyperparamters for RetBfgs
            rhoGradient = Options.rhoGradient;
            rhoDescent  = Options.rhoDescent;
            
            % Write new stabilized descent direction
            newStabGradient = rhoDescent * this.curStabGradient + (1 - rhoDescent) * this.curG;
            
            % Write new stabilized gradient for BFGS update
            newRetardedGradient = rhoGradient * this.curRetardedGradient + (1 - rhoGradient) * this.curG;
            
            % Bias correction on stabilized descent direction and gradient
            intStabGradient = newStabGradient / (1 - rhoDescent^iteration);
            intRetardedGradient = newRetardedGradient / (1 - rhoGradient^iteration);

            % Some short cuts
            D = -intStabGradient;
            G = intRetardedGradient;
            B = this.curRetardedInvHessian;
            
            % Write new inverse Hessian approximation
            if iteration > 1
                s = this.curPar - this.oldPar;
                y = this.curRetardedGradient - this.oldRetardedGradient;
                hessianUpdate = y*y' / (y'*s) - ((B*y)*s' + s*(y'*B)) / (s'*y);
                B = this.curRetardedInvHessian + hessianUpdate;
            
                % Update Trust region radius
                if norm(this.curPar - this.oldPar) > 0.99*this.curTrustRegion
                    if this.curJ <= this.oldJ
                        this.curTrustRegion = 1.5 * this.curTrustRegion;
                    else
                        this.curTrustRegion = 0.25 * this.curTrustRegion;
                    end
                end

                % Here comes a dogleg optimization step
                newtonStep = -B*G;
                cauchyStep = ((D*D') * B) * D / (norm(D)^2);
                normD = norm(cauchyStep);

                if (norm(newtonStep) <= this.curTrustRegion)
                    % Do a pure Newton step if possible
                    newStep = newtonStep;
                else
                    if (normD > this.curTrustRegion)
                        % Do a pure gradient step if Cauchy point too far
                        newStep = D * (this.curTrustRegion/norm(D));
                    else
                        % Do a real dogleg step, if necessary
                        doglegScale = sqrt((this.curTrustRegion^2 - normD^2) / sum((newtonStep - cauchyStep).^2));
                        newStep = cauchyStep + doglegScale * (newtonStep - cauchyStep);
                    end
                end
            else
                newStep = (D / norm(D)) * this.curTrustRegion;
            end
            
            % Update momentum and velocity
            this.oldPar = this.curPar;
            this.oldStabGradient = this.curStabGradient;
            this.oldRetardedGradient = this.curRetardedGradient;
            this.oldRetardedInvHessian = this.curRetardedInvHessian;
            
            this.curPar = this.curPar + newStep;
            this.curStabGradient = newStabGradient;
            this.curRetardedGradient = newRetardedGradient;
            this.curRetardedInvHessian = B;
        end
    end

end

