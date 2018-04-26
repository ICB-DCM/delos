classdef RmsPropOptimizer < matlab.mixin.CustomDisplay
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS

    properties ( GetAccess = 'private', SetAccess = 'private' )
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
        function output = RmsPropOptimizer()
        end
        
        function this = initialize(nPar, minibatching)
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
        end
    end

end

