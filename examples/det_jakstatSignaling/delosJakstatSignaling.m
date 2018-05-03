% Main file of the JakStat signaling example
%
% Demonstrates the use of:
% * getMultiStarts()
% * getParameterProfiles()
%
% Demostrates furhtermore
% * how to implement a user-supplied guess for intial parameters
% * that non-evaluable points in parameter space can occur
% * how different optimization methods perform (multi-start local, hybrid,
%   global) -> Not necessary to perform computations, data-sheet is in this
%   folder and can be loaded (comparison_optimization_methods.mat)
% * how providing Hessians can improve optimization
% * how to use profile calculation in hybrid mode on a complex example
% * how to use parallelization
%
% This example provides a model for the JakStat signaling pathway with an
% time resolved input of the drug EPO. The model has been taken from the
% papers "Identification of nucleocytoplasmic cycling as a remote sensor in 
% cellular signaling by databased modeling" by Swameye et al. in 2003, 
% PNAS, vol.100, no.3 (see http://www.pnas.org/content/100/3/1028.long) and
% "Comprehensive estimation of input signals and dynamics in biochemical 
% reaction networks" by Schelker et al. in 2012, Bioinformatics, vol.28 
% (see http://bioinformatics.oxfordjournals.org/content/28/18/i529.full).
%
% The data used is measurement data provided in the publications.
%
% This file performs a multistart local optimization based on measured data 
% from the referenced papers, demonstrating the use of getMultiStarts().


%% Preliminary
% Clean up

clear all;
close all;
clc;

% Seed random number generator
rng(0);

%% Model Definition
% The ODE model is set up using the AMICI toolbox. To access the AMICI
% model setup, see jakstat_pesto_syms.m
% For a detailed description for the biological model see the referenced
% papers on the JakStat signaling pathway by Swameye et al. and Schelker et
% al.
addpath('../../../Pesto/PESTO');
[exdir,~,~]=fileparts(which('delosJakstatSignaling.m'));
% amiwrap('jakstat_delos','jakstat_delos_syms', exdir);

%% Data
% Experimental data is read out from an .xls-file and written to an AMICI
% object which is used for the ODE integration
datatable         = xlsread(fullfile(exdir,'pnas_data_original.xls'));
amiData.t         = datatable(:,1);       % time points
amiData.Y         = datatable(:,[2,4,6]); % measurement
amiData.condition = [1.4,0.45];           % initial conditions
amiData.Sigma_Y   = NaN(size(amiData.Y)); % preallocation of variances
amiData           = amidata(amiData);     % calling the AMICI routine

%% Generation of the structs and options for PESTO
% The structs and the PestoOptions object, which are necessary for the 
% PESTO routines to work are created and set to convenient values

% parameters
lb     = -5 * ones(17,1);
ub     =  3 * ones(17,1);
ub(4)  =  6;
ub(2)  =  6;
lb(10) = -6;
lb(4)  = -3;
lb(2)  = -3;

% Initial guess for the parameters
load('init.mat');

% add the package
addpath('../../');

% define objective function and true parameter value
objectiveFunction = @(theta) logLikelihoodJakstatDelos(theta, amiData);


% Run getMultiStarts
fprintf('\n Perform optimization...');

% set options
options = struct(...
    'algorithm', 'rmspropnesterov', ...
    'display', 'console', ...
    'minibatching', false, ...
    'etaMax', 1e-1, ...
    'etaMin', 1e-4, ...
    'tau', 750, ...
    'restriction', true, ...
    'reportInterval', 10, ...
    'barrier', 'none', ...
    'alphaMin', 0.5, ...
    'alphaMax', 0.9, ...
    'tauAlpha', 500, ...
    'rho', 0.5, ...
    'delta', 1e-7, ...
    'maxIter', 1000);

% initial guess
initGuess = init;

for iStart = 5
    Results(iStart) = delos(objectiveFunction, lb, ub, initGuess(:,iStart), options);
end

display(Results);

