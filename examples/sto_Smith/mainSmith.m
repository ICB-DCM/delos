
% Cleaning up
clear all;
close all;
clc;

% Wrap model using AMICI, if necessary
% [exdir,~,~]=fileparts(which('Smith_syms.m'));
% try
%     amiwrap('Smith','Smith_syms', exdir);
% catch ME
%     warning('This DeLOS example uses the AMICI toolbox (available at https://github.com/ICB-DCM/AMICI). Unfortunately, there was a problem with AMICI when trying to run this example file. Please check if AMICI is properly installed to run this example. The original error message was:');
%     rethrow(ME);
% end

% set true parameter vector, noise level, etc.
load('Smith2013_pnom.mat', 'pnom')
theta = log10(pnom(:));
dataSetSize = 100;

% Recreate new dataset?
writeNewData = false; % true

if writeNewData
    writeData_Smith(dataSetSize);
end

% load measurement data and innitial conditions
load('amiData_Smith.mat');
amiOptions = amioption();
amiOptions.atol = 1e-10;
amiOptions.rtol = 1e-7;
amiOptions.quad_atol = 1e-10;
amiOptions.quad_rtol = 1e-7;

% add the package
addpath('../../');
data = getArtificialData_Smith();
con0 = getConditions_Smith();
timepoints = 1:10;
data = data(1:dataSetSize,:,:);
con0 = con0(:,1:dataSetSize);
% define objective function and true parameter value
objectiveFunction = @(x, miniBatch) logLikelihoodSmith(x, data, con0, timepoints, miniBatch);
% objectiveFunction = @(x, miniBatch) llhSmith(x, miniBatch, amiData, amiOptions, dataSetSize);

[l,g] = objectiveFunction(theta, 1);

% set options
options = struct(...
    'algorithm', 'rmspropnesterov', ...
    'display', 'console', ...
    'minibatching', true, ...
    'miniBatchSize', 10, ...
    'reportInterval', 1, ...
    'dataSetSize', dataSetSize, ...
    'etaMax', 1e-1, ...    
    'etaMin', 1e-5, ...
    'alphaMin', 0.5, ...
    'alphaMax', 0.9, ...
    'tauAlpha', 500, ...
    'delta', 1e-8, ....
    'rho', 0.5, ...
    'tau', 700, ...
    'maxIter', 1000, ...
    'maxFunEvals', 2000);

% set parameter bounds
lb = -8 * ones(383,1);
ub = 6 * ones(383,1);

% initial guess
nMultiStarts = 10;
% lb = max(theta - 5, lb);
% ub = min(theta + 3, ub);
% initGuesses = ((ub-lb)*ones(1,100)) .* rand(383,nMultiStarts) + 0.5 * (lb+ub);
% save('initGuesses_Smith.mat', 'initGuesses');

load('initGuesses_Smith.mat');

for iRun = 1 : nMultiStarts
    try
        Results(iRun) = delos(objectiveFunction, lb, ub, initGuesses(:,iRun), options);
    catch ERM
        warning('Optimization did not work!');
    end
end

display(Results);
