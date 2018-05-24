classdef GeneralOptimizer < matlab.mixin.CustomDisplay
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS

    properties ( GetAccess = 'public', SetAccess = 'public' )
        % current parameter vector
        curPar;
        
        % current objective function value
        curJ;
        
        % current objective gradient value
        curG;
    end
    
    properties ( GetAccess = 'public', SetAccess = 'protected' )
        % old parameter vector
        oldPar;
        
        % old objective function value
        oldJ;
        
        % old objective gradient value
        oldG;
        
        % Apply Nestorov moment idea
        nesterov = false;
        
        % history of cost function values
        histJ = zeros(5,1);
        
        % trust region size
        trScale = 1;
        
        % stochasitc mode? (really do mini batching?)
        minibatching = true;
        
        % Accept proposed optimization step 
        acceptStep = false;
        
        % converged?
        converged = false;
    end
    
    methods
        function output = GeneralOptimizer()
        end
        
        function this = checkConvergence(this, Options)
            this.trScale = min(this.trScale * 1.5, 1.0);
            this = this;
        end

        function this = updateHistory(this)
        end
        
        function Results = saveStep(this, Results, iteration)
            Results.objectiveTrace(iteration) = this.curJ;
            Results.normGradTrace(iteration) = norm(this.curG);
            Results.parameterChangeTrace(iteration) = norm(this.curPar-this.oldPar);
            Results.parameterTrace(:,iteration) = this.curPar;
        end
    end
    
    methods(Static)
        function setupOutput(Options)
            % Write first line of output (in file or to console)
            if (~strcmp(Options.display, 'off'))
                fprintf(Options.displayHandle, '\n| Iter. | Objective Function | Gradient Norm      | Norm of Par.Change |\n');
                fprintf(Options.displayHandle, '|======================================================================|\n');
            end
        end
        
        function printOutput(Options, Results, iteration)
            % Write current line of output (in file or to console)
            if (~strcmp(Options.display, 'off'))
                if (mod(iteration - 1, Options.reportInterval) == 0)
                    fprintf(Options.displayHandle, '| %5i | %18.7e | %18.7e | %18.7e |\n', iteration, ...
                        Results.objectiveTrace(iteration), ...
                        Results.normGradTrace(iteration), ...
                        Results.parameterChangeTrace(iteration));
                end
            end
        end
        
        function finishOutput(Options, Results, iteration)
            % Make sure that the last optimization step result is printed
            if (~strcmp(Options.display, 'off'))
                fprintf(Options.displayHandle, '| %5i | %18.7e | %18.7e | %18.7e |\n', iteration, ...
                    Results.objectiveTrace(iteration), ...
                    Results.normGradTrace(iteration), ...
                    Results.parameterChangeTrace(iteration));
                fprintf(Options.displayHandle, '|======================================================================|\n');
            end
        end
        
    end

end

