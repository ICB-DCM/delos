function [miniBatchIndices, dataSetIndices] = generateMiniBatches(nBatch, nData, maxIter, maxFunEvals)

    % Give shorter names to variables... (Readability)
    nSteps = max(maxIter, maxFunEvals) + 1;
    safetyFactor = 2;
    miniBatchIndices = cell(safetyFactor * nSteps, 1);
    dataSetIndices = 1 : nData;
    
    % How many minibatches are needed? How many epoches?
    % Create some more minibatches if some must be skipped
    subsets = nan(1, safetyFactor * nSteps * nBatch);
    nEpoches = ceil((safetyFactor * nSteps * nBatch) / nData);

    for iEpoche = 1 : nEpoches
        if (iEpoche == nEpoches)
            subsets(1 + (iEpoche-1) * nData : safetyFactor * nSteps * nBatch) = ...
                randperm(nData, safetyFactor * nSteps * nBatch - (iEpoche-1) * nData);
        else
            subsets(1 + (iEpoche-1) * nData : iEpoche * nData) = ...
                randperm(nData);
        end
    end

    % Reorganize it (easier to use)
    for iBatch = 1 : safetyFactor * nSteps
        miniBatchIndices{iBatch} = subsets(...
            (iBatch-1) * nBatch + 1 : iBatch * nBatch);
    end

end