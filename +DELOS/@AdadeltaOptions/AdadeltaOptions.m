classdef AdadeltaOptions < DELOS.GeneralOptions
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS
    
    properties ( GetAccess = 'public', SetAccess = 'private' )
        % Algorithm
        algorithm = 'adadelta';
        
        % Initial learning rate
        etaStart = 1e-1
        
        % Minimum learning rate
        etaMin = 1e-5
        
        % Decay time for learning rate
        tauDelta;
        
        % Memory parameter for learning rate
        rho = 0.5;
        
        % Maximum parameter for numerical stabilization
        deltaMax = 1e-2;
        
        % Minimum parameter for numerical stabilization
        deltaMin = 1e-6;
    end
    
    methods
        function output = AdadeltaOptions(input)
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
            
            if(isa(input,'AdadeltaOptions'))
                output = input;
            elseif(isa(input,'struct'))
                inputfields = fields(input);
                for iField = 1 : length(inputfields)
                    if isprop(output, inputfields{iField})
                        output.(inputfields{iField}) = input.(inputfields{iField});
                    else
                        error(['Can not assign property ' field ' to an instance of AdadeltaOptions.']);
                    end
                end
                
                % Check if the field tau was set
                if isfield(input, 'tauDelta')
                    output.tau = round(0.8 * output.maxIter);
                end
            else
                error('First input is not instance of an options object')
            end

        end
        
    end

end

