classdef AdamOptimizer < DELOS.GeneralOptimizer
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS

    properties ( GetAccess = 'public', SetAccess = 'protected' )
        % current information on Momentum
        curM;
        
        % current information on velocity
        curV;
        
        % old information on Momentum
        oldM;
        
        % old information on velocity
        oldV;
    end
    
    methods
        function output = AdamOptimizer()
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
            this.curV = zeros(nPar,1);
            this.oldM = zeros(nPar,1);
            this.oldV = zeros(nPar,1);
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
            this.curV   = this.oldV;
        end
        
        function this = doParameterStep(this, Options, iteration)
            % Adaptive update method (varying step size for each parameter), based on
            % Adagrad, with dimension correction,taken from SEbastian Ruder'S blog
            % http://http://sebastianruder.com/optimizing-gradient-descent/index.html
            %

            % New important variables:
            %   * rho1: decay rate for memorizing RMS gradients
            %   * rho2: decay rate for memorizing gradients
            %   * R
            %   * V
            %
            % Hyperparameters:
            %   * rho1: decay rate ? (0.5, 0.999)
            %   * rho2: decay rate ? (0.5, 0.999)
            %   * delta: small positive number to stabilize step for small R

            % Hyperparamters for Adam (decay rate and stabilization)
            delta     = repmat(Options.delta, [length(this.curPar) 1]);
            rho1      = Options.rho1;
            rho2      = Options.rho2;

            % Learning rate, similar to simple SGD, decreasing over time
            eta       = Options.learningRate(iteration);
            % eta = 0.5 * (eta + Options.etaMax / iteration);
            
            % Write new velocity and update parameters
            newV        = rho1 * this.curV + (1 - rho1) * this.curG;
            newM        = rho2 * this.curM + (1 - rho2) * this.curG.^2;
            intV        = newV / (1 - rho1^iteration);
            intM        = newM / (1 - rho2^iteration);

            delTheta    = -eta * intV ./ (sqrt(intM) + delta);
            newTheta    = this.curPar + delTheta * this.trScale;
            
            % Update momentum and velocity
            this.oldPar = this.curPar;
            this.oldV   = this.curV;
            this.oldM   = this.curM;
            
            this.curPar = newTheta;
            this.curV   = newV;
            this.curM   = newM;
        end
    end

end

