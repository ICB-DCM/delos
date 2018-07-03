classdef AdamOptions < DELOS.GeneralOptions
    % DelosProblem carries all niformation about a given optimization
    % problem which is to be solved by DeLOS
    
    properties ( GetAccess = 'public', SetAccess = 'private' )
        % Algorithm
        algorithm = 'adam';
        
        % Maximum learning rate
        etaMax = 1e-1
        
        % Minimum learning rate
        etaMin = 1e-5
        
        % Decay time for learning rate
        tau;
        
        % Memory parameter 1 for learning rate
        rho1 = 0.5;
        
        % Memory parameter 2 for learning rate
        rho2 = 0.5;
        
        % Parameter for numerical stabilization
        delta = 1e-8;
    end
    
    methods
        function output = AdamOptions(input)
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
            
            if(isa(input,'AdamOptions'))
                output = input;
            elseif(isa(input,'struct'))
                inputfields = fields(input);
                for iField = 1 : length(inputfields)
                    if isprop(output, inputfields{iField})
                        output.(inputfields{iField}) = input.(inputfields{iField});
                    else
                        error(['Can not assign property ' inputfields{iField} ' to an instance of AdamOptions.']);
                    end
                end
                
                % Check if the field tau was set
                if isfield(input, 'tau')
                    output.tau = round(0.8 * output.maxIter);
                end
            else
                error('First input is not instance of an options object')
            end

        end
        
    end

end

