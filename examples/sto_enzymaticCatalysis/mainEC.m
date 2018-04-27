
% Cleaning up
clear all;
close all;
clc;

% % Wrap model using AMICI, if necessary
% [exdir,~,~]=fileparts(which('model_EC_syms.m'));
% try
%     amiwrap('model_EC_DELOS','model_EC_syms', exdir);
% catch ME
%     warning('This DeLOS example uses the AMICI toolbox (available at https://github.com/ICB-DCM/AMICI). Unfortunately, there was a problem with AMICI when trying to run this example file. Please check if AMICI is properly installed to run this example. The original error message was:');
%     rethrow(ME);
% end

% set true parameter vector, noise level, etc.
theta = [2, -4, 1, 0, 2, -6, 1];
sigma2 = 0.1;
timepoints = 8;
dataSetSize = 1000;

% Recreate new dataset?
writeNewData = false; % true
if writeNewData
    modelSpec = struct(...
        'theta', theta, ...
        'sigma2', sigma2, ...
        'nTimepoints', timepoints, ...
        'nMeasure', dataSetSize);
    writeData_EC(modelSpec);
end

% load measurement data and innitial conditions
load('amiData_EC.mat');
amiOptions = amioption();
amiOptions.atol = 1e-12;
amiOptions.rtol = 1e-8;

% add the package
addpath('../../');

% define objective function and true parameter value
objectiveFunction = @(x, miniBatch) llhEnzymaticCatalysis(x, miniBatch, amiData, amiOptions);

% set options
options = struct(...
    'algorithm', 'rmspropnesterov', ...
    'display', 'console', ...
    'minibatching', true, ...
    'miniBatchSize', 50, ...
    'reportInterval', 10, ...
    'dataSetSize', dataSetSize, ...
    'etaMax', 1e-1, ...    
    'etaMin', 1e-5, ...
    'alphaMin', 0.5, ...
    'alphaMax', 0.9, ...
    'tauAlpha', 500, ...
    'delta', 1e-8, ....
    'rho', 0.5, ...
    'tau', 700, ...
    'maxIter', 800, ...
    'maxFunEvals', 2000);

% set parameter bounds
lb = -7 * ones(7,1);
ub = 3 * ones(7,1);

% initial guess
nMultiStarts = 50;
load('initGuesses.mat'); % initGuesses = 10 * rand(7,nMultiStarts) - 7;

for iRun = 1 : 5
    Results(iRun) = delos(objectiveFunction, lb, ub, initGuesses(:,iRun), options);
end

display(Results);
