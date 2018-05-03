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

TextSizes.DefaultAxesFontSize = 14;
TextSizes.DefaultTextFontSize = 18;
set(0,TextSizes);

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
parameters.min     = -5 * ones(17,1);
parameters.max     =  3 * ones(17,1);
parameters.max(4)  =  6;
parameters.max(2)  =  6;
parameters.min(10) = -6;
parameters.min(4)  = -3;
parameters.min(2)  = -3;
parameters.number  = length(parameters.min);
parameters.name    = {'log_{10}(p1)','log_{10}(p2)','log_{10}(p3)','log_{10}(p4)','log_{10}(init_{STAT})',...
    'log_{10}(sp1)','log_{10}(sp2)','log_{10}(sp3)','log_{10}(sp4)','log_{10}(sp5)',...
    'log_{10}(offset_{tSTAT})','log_{10}(offset_{pSTAT})','log_{10}(scale_{tSTAT})','log_{10}(scale_{pSTAT})',...
    'log_{10}(\sigma_{pSTAT})','log_{10}(\sigma_{tSTAT})','log_{10}(\sigma_{pEpoR})'};

% Initial guess for the parameters
load('init.mat');
parameters.guess = init;

% objective function
objectiveFunction = @(theta) logLikelihoodJakstatDelos(theta, amiData);

% PestoOptions
options          = PestoOptions();
options.trace    = false;
options.proposal = 'uniform';
options.obj_type = 'negative log-posterior';
options.mode     = 'visual';
options.localOptimizer = 'delos';
options.localOptimizerSaveHessian = false;
options.objOutNumber = 2;

%% Perform optimization
% A parameters optimization is performed within the bound defined in
% parameters.min and .max in order to infer the unknown parameters from 
% measurement data.

% REMARK: The optimization in this case is rather challenging and the
% box constraints in the parameter space are set generously. So
% optimization will encounter many points in which the ODE can not be
% evaluated, leading to warnings of the ODE simulator AMICI. This is normal
% and not a bug. It just shows how paramter estimation can look like in
% complicated situations.

% Different parameter optimization methods are compared with each other.
% The uncommented version is a simple multi-start local optimization.
% A version with a hybrid optimization technique (MEIGO-ESS) is also
% implemented and commented, as well as a purely global optimization scheme
% (PSwarm). The two alternative (and global) optimization methods are run
% three times, to ensure that the found optimum is indeed the global one.


% Multi-start local optimization part
options.n_starts = 20;
    %% Optimizer settings
    
% options.localOptimizer = 'fmincon';
% options.localOptimizerOptions = optimset(...
%     'Algorithm', 'interior-point',...
%     'GradObj', 'on',...
%     'Display', 'iter', ... 'Hessian', 'on', ... uncomment this to use the Hessian for optimization 
%     'MaxIter', 1000,...
%     'TolFun', 1e-10,...
%     'TolX', 1e-12,...
%     'TolGrad', 1e-6,...
%     'MaxFunEvals', 1000*parameters.number);

    OptimizerOptions = struct(...
                'minibatching', false,...
                'miniBatchSize', 1, ...
                'dataSetSize', 1, ...
                'barrier', 'none', ... 'soft-barrier', ...
                'display', 'console', ...
                'restriction', true, ...
                'reportInterval', 10, ...
                'algorithm', 'rmspropnesterov', ...
                'maxIter', 1000);
           
%     % rmsprop
%     OptimizerOptions.method = 'rmsprop';
%     OptimizerOptions.hyperparams = struct('rho', 0.9, ...
%                 'delta', 1e-8, ...
%                 'eps0', 0.5, ...
%                 'epsTau', 0.001, ...
%                 'tau', 30);
%     options.localOptimizerOptions = OptimizerOptions;
            
    % rmspropnesterov      
    OptimizerOptions.rho = 0.5;
    OptimizerOptions.etaMin = 1e-4;
    OptimizerOptions.etaMax = 0.1;
    OptimizerOptions.tau = 750;
    OptimizerOptions.alphaMin = 0.5;
    OptimizerOptions.alphaMax = 0.9;
    OptimizerOptions.tauAlpha = 500;
    OptimizerOptions.delta = 1e-7;
    options.localOptimizerOptions = OptimizerOptions;
    
%     % adam
%     OptimizerOptions.method = 'adam';
%     OptimizerOptions.hyperparams = struct(...
%                 'rho1', 0.5, ...
%                 'rho2', 0.5, ...
%                 'delta', 1e-8, ...
%                 'tau', 1000, ...
%                 'epsTau', 1e-5, ...
%                 'eps0', 0.1);
%     options.localOptimizerOptions = OptimizerOptions;

%    % adadelta
%     OptimizerOptions.method = 'adadelta';
%     OptimizerOptions.hyperparams = struct(...
%                 'rho', 0.5, ...
%                 'eps0', 0.1, ...
%                 'delta0', 0.01, ...
%                 'deltaTau', 0.01, ...
%                 'tau', 30);
%     options.localOptimizerOptions = OptimizerOptions;
    
% Run getMultiStarts
fprintf('\n Perform optimization...');

parametersMultistart = getMultiStarts(parameters, objectiveFunction, options);
% parametersHybrid = getMultiStarts(parameters, objectiveFunction, optionsPestoHybrid);
% parametersGlobal = getMultiStarts(parameters, objectiveFunction, optionsPestoGlobal);



% Potential saddle point
%   -1.943355477763406
%    4.913402094320207
%    2.351603488675105
%    0.820884647705983
%    0.262561170015936
%   -2.983772811428075
%   -0.276241067539346
%   -0.064592894685342
%   -0.432189036666338
%    0.121711510766994
%   -0.119936148611484
%   -0.156923571853729
%   -2.902336048389599
%   -3.710439632611835
%   -0.642247167746234
%   -0.884005082489238
%   -1.192900004464454

%% Perform uncertainty analysis
% The uncertainty of the estimated parameters is visualized by computing
% and plotting profile likelihoods. Different mathod can be used.

% Use the hybrid approach for profiles: uncomment this, if wanted
% optionsPesto.profile_method = 'integration';

