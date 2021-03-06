classdef RmsPropOptimizer < DELOS.GeneralOptimizer
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS

    properties ( GetAccess = 'public', SetAccess = 'protected' )
        % current information on gradient norm
        curM;
        
        % old information on gradient norm
        oldM;
    end
    
    methods
        function output = RmsPropOptimizer()
        end
        
        function this = initialize(this, nPar, minibatching)
            % Initialize all general solver values
            this.curJ = inf;
            this.curG = zeros(nPar,1);
            this.oldJ = inf;
            this.oldG = zeros(nPar,1);
            this.minibatching = minibatching;
            
            % Initialize all solver specific values
            this.curM = zeros(nPar,1);
            this.oldM = zeros(nPar,1);
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
            this.curM   = this.oldM;
        end
        
        function this = doParameterStep(this, Options, iteration)
            % Adative update method (varying step size for each parameter), combined
            % with 2nd order momentum, taken from
            % "Goodfellow: Deep Learning, avail. at http://www.deeplearningbook.org,
            % Chapter 8, Algorithm 8.6, page 310, for more details see also
            % documentation of RMSProp and Nesterov Momentum
            %
            % New important variables:
            %   * R: float vector, contains the memory about former learning rates for
            %       the searched parameters
            %
            % Hyperparameters:
            %   * rho: decay rate for the memory, usually ? (0.5, 0.999)
            %   * factorAlpha, eps0, epsTau, tau: control of the learning rate,
            %       identical to standard SGD method (see there)     
            %   * epsil: learning rate, chosen similar to optimUpdateSGD
            %   * clipping: clipping factor to avoid upscaling small gradients,
            %       but avoided here since the method does this implicitly
            %   * delta: small positive number to stabilize step for small R

            % Hyperparamters for RMS prop (decay rate and stabilization
            delta     = repmat(Options.delta, [length(this.curPar) 1]);
            rho       = Options.rho;

            % Learning rate, similar to simple SGD, decreasing over time
            eta       = Options.learningRate(iteration);
            % eta = 0.5 * (eta + Options.etaMax / iteration);
            
            % Write new velocity and update parameters
            newM      = rho * this.curM + (1 - rho) * (this.curG).^2;
            delTheta  = - eta * ((this.curG )./ (sqrt(newM) + delta));
            newTheta  = this.curPar + delTheta * this.trScale;
            
            % Update momentum and velocity
            this.oldPar = this.curPar;
            this.oldM   = this.curM;
            
            this.curPar = newTheta;
            this.curM   = newM;
        end
    end

end

