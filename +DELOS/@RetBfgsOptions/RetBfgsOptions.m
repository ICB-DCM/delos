classdef RetBfgsOptions < DELOS.GeneralOptions
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS
    
    properties ( GetAccess = 'public', SetAccess = 'private' )
        % Algorithm
        algorithm = 'retbfgs';
        
        % Initial size of the trust region radius
        initialTrustRegion = 0.5;
        
        % Memory parameter for gradient (used for computing Hessian appr.)
        rhoGradient = 0.5;
        
        % Memory parameter for descent direction
        rhoDescent = 0.1;
    end
    
    methods
        function output = RetBfgsOptions(input)
            % DelosOptions is the mother class for the individual solver
            % classes
            %
            % Parameters:
            %  input: a NoodleProblem or a struct containing the necessery
            %      informations about the optimization problem
            %
            % Return values:
            %  Problem: NoodleProblem object
            
            % Check, if input was given
            if (nargin == 0)
                input = struct();
            end
            
            if(isa(input,'RetBfgsOptions'))
                output = input;
            elseif(isa(input,'struct'))
                inputfields = fields(input);
                for iField = 1 : length(inputfields)
                    if isprop(output, inputfields{iField})
                        output.(inputfields{iField}) = input.(inputfields{iField});
                    else
                        error(['Can not assign property ' inputfields{iField} ' to an instance of RetBfgsOptions.']);
                    end
                end
            else
                error('First input is not instance of an options object')
            end

        end
        
    end

end

