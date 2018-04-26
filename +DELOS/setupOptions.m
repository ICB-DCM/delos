function output = setupOptions(input)

    % Check input
    if (nargin == 0)
        error('Not enough input arguments to create a DelosOptions object from it!');
    end

    if ischar(input)
        switch input
            case 'adadelta'
                output = DELOS.AdadeltaOptions;
            case 'adam'
                output = DELOS.AdamOptions;
            case 'rmsprop'
                output = DELOS.RmsPropOptions;
            case 'rmspropnesterov'
                output = DELOS.RmsPropNesterovOptions;
            otherwise
                error('Unknown optimizer!');
        end
    
    elseif (isa(input,'AdadeltaOptions'))
        output = DELOS.AdadeltaOptions(input);
        
    elseif (isa(input,'AdamOptions'))
        output = DELOS.AdamOptions(input);
        
    elseif (isa(input,'RmsPropOptions'))
        output = DELOS.RmsPropOptions(input);
        
    elseif (isa(input,'RmsPropNesterovOptions'))
        output = DELOS.RmsPropNesterovOptions(input);
        
    elseif (isa(input,'struct'))
        if isfield(input, 'algorithm')
            switch input.algorithm
                case 'adadelta'
                    output = DELOS.AdadeltaOptions(input);
                case 'adam'
                    output = DELOS.AdamOptions(input);
                case 'rmsprop'
                    output = DELOS.RmsPropOptions(input);
                case 'rmspropnesterov'
                    output = DELOS.RmsPropNesterovOptions(input);
                otherwise
                    error('Unknown optimizer!');
            end
        else
            error('A struct was given as input, but no algorithm was specified. Can not create an Options object from that!');
        end
        
    else
        error('The given input is neither a string, nor a struct, nor an Options object. DeLOS can not create an options object from that, sorry!');
    end
    
end