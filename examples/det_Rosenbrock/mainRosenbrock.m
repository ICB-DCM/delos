
% Cleaning up
clear all;
close all;
% clc;

% add the package
addpath('../');

% define objective function and true parameter value
objectiveFunction = @(x) llhRosenbrock(x);

% set options
options = struct(...
    'algorithm', 'rmspropnesterov', ...
    'display', 'console', ...
    'minibatching', false, ...
    'etaMin', 1e-3, ...
    'alphaMin', 0.9, ...
    'alphaMax', 0.9, ...
    'rho', 0.9, ...
    'tau', 500, ...
    'maxIter', 500);

% set parameter bounds
lb = [-6; -6];
ub = [ 6;  6];

% initial guess
initGuess = [-3, 2];

Results = delos(objectiveFunction, lb, ub, initGuess, options);
