classdef DelosResults < matlab.mixin.CustomDisplay
    % DeLOS results objects carry all information from the optimization
    % process
    
    properties ( GetAccess = 'public', SetAccess = 'public' )
        % initial guess for the parameters
        initPar = [];
        
        % initial objective value
        initObj = [];
        
        % final parameter vector
        finalPar = [];
        
        % number of optimization steps taken
        iterCount = [];
        
        % number of function evaluations
        funCount = [];
        
        % number of epoches taken
        epochCount = [];
        
        % computation time with Noodles
        cpuTime = [];
        
        % final norm of the objective gradient
        finalGradNorm = [];
        
        % final value of the objective function
        finalObj = [];
        
        % final gradient of the objective function
        finalGrad = [];
        
        % exitflag of the optimizer
        exitflag = []; 
        
        % history of objective function value
        objectiveTrace;
        
        % history of norm of objective function gradient
        normGradTrace;
        
        % history of norm of parameter step
        parameterChangeTrace;
        
        % history of parameters
        parameterTrace;
    end
    
    methods
        function output = DelosResults()
        end
    end

end

