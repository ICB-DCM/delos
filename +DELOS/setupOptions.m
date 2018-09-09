function optionsOut = setupOptions(optionsIn)

    % Check input
    if (nargin == 0)
        error('Not enough input arguments to create a DelosOptions object from it!');
    end

    if ischar(optionsIn)
        switch optionsIn
            case 'adadelta'
                optionsOut = DELOS.AdadeltaOptions;
            case 'adam'
                optionsOut = DELOS.AdamOptions;
            case 'rmsprop'
                optionsOut = DELOS.RmsPropOptions;
            case 'rmspropnesterov'
                optionsOut = DELOS.RmsPropNesterovOptions;
            case 'retbfgs'
                optionsOut = DELOS.RetBfgsOptions;
            otherwise
                error('Unknown optimizer!');
        end
    
    elseif (isa(optionsIn,'AdadeltaOptions'))
        optionsOut = DELOS.AdadeltaOptions(optionsIn);
        
    elseif (isa(optionsIn,'AdamOptions'))
        optionsOut = DELOS.AdamOptions(optionsIn);
        
    elseif (isa(optionsIn,'RmsPropOptions'))
        optionsOut = DELOS.RmsPropOptions(optionsIn);
        
    elseif (isa(optionsIn,'RmsPropNesterovOptions'))
        optionsOut = DELOS.RmsPropNesterovOptions(optionsIn);
        
    elseif (isa(optionsIn,'RetBfgsOptions'))
        optionsOut = DELOS.RetBfgsOptions(optionsIn);
        
    elseif (isa(optionsIn,'struct'))
        if isfield(optionsIn, 'algorithm')
            switch optionsIn.algorithm
                case 'adadelta'
                    optionsOut = DELOS.AdadeltaOptions(optionsIn);
                case 'adam'
                    optionsOut = DELOS.AdamOptions(optionsIn);
                case 'rmsprop'
                    optionsOut = DELOS.RmsPropOptions(optionsIn);
                case 'rmspropnesterov'
                    optionsOut = DELOS.RmsPropNesterovOptions(optionsIn);
                case 'retbfgs'
                    optionsOut = DELOS.RetBfgsOptions(optionsIn);
                otherwise
                    error('Unknown optimizer!');
            end
        else
            error('A struct was given as input, but no algorithm was specified. Can not create an Options object from that!');
        end
        
    else
        error('The given input is neither a string, nor a struct, nor an Options object. DeLOS can not create an options object from that, sorry!');
    end
    
    % create learning rate, if not done yet
    if (~isfield(optionsIn, 'learningRate') || isempty(optionsIn.learningRate))
        optionsOut = optionsOut.generateLearningRate();
    else
        optionsOut = optionsOut.setLearningRate(optionsIn.learningRate);
    end
    
end