classdef AdadeltaOptimizer < matlab.mixin.CustomDisplay
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS
    
    properties ( GetAccess = 'private', SetAccess = 'private' )
        % current information on gradient history
        curGH;
        
        % current information on parameter step history
        curSH;
        
        % old information on gradient history
        oldGH;
        
        % old information on parameter step history
        oldSH;
    end
    
    methods
        function output = AdadeltaOptimizer()
        end
        
        function this = initialize(nPar, minibatching)
            % Initialize all general solver values
            this.curJ = inf;
            this.curG = zeros(nPar,1);
            this.oldJ = inf;
            this.oldG = zeros(nPar,1);
            this.minibatching = minibatching;
            
            % Initialize all solver specific values
            this.curGH = zeros(nPar,1);
            this.curSH = zeros(nPar,1);
            this.oldGH = zeros(nPar,1);
            this.oldSH = zeros(nPar,1);
        end
    end

end

