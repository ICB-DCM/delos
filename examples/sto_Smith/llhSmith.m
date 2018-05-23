function varargout = llhSmith(theta, miniBatch, amiData, amiOptions, datasetSize)
% Objective function for examples/Smith
%
% logLikelihoodJakstat.m provides the log-likelihood, its gradient and an 
% the Hessian matrix for the model for the JakStat signaling pathway as
% defined in jakstat_pesto_syms.m
% 
% USAGE:
% [llh] = getParameterProfiles(theta, amiData)
% [llh, sllh] = getParameterProfiles(theta, amiData)
%
% Parameters:
%  theta: Model parameters 
%  amiData: an amidata object for the AMICI solver
%
% Return values:
%   varargout:
%     llh: Log-Likelihood, only the LogLikelihood will be returned, no 
%         sensitivity analysis is performed
%     sllh: Gradient of llh, The LogLikelihood and its gradient will be 
%         returned, first order adjoint sensitivity analysis is performed
%     s2llh: Hessian of llh, The LogLikelihood, its gradient and the 
%         Hessian matrix will be returned, second order adjoint sensitivity 
%         analysis is performed



%% Model Definition
% The ODE model is set up using the AMICI toolbox. To access the AMICI
% model setup, see jakstat_pesto_syms.m
% For a detailed description for the biological model see the referenced
% papers on the JakStat signaling pathway by Swameye et al. and Schelker et
% al.

%% AMICI
% Setting the options for the AMICI solver
amiOptions.rtol = 1e-7;
amiOptions.atol = 1e-10;
amiOptions.quad_rtol = 1e-7;
amiOptions.quad_atol = 1e-10;
amiOptions.sensi_meth = 'adjoint';

% Preallocate
J = 0;
gradJ = zeros(size(theta));

if size(miniBatch, 1) > size(miniBatch, 2)
    miniBatch = transpose(miniBatch);
end

% Loop over the experiments and simulation for each experiment
for iMeasure = miniBatch
    
    % Create amidata object
    amiD.t = amiData(iMeasure).t;
    amiD.Y = squeeze(amiData(iMeasure).Y);
    amiD.Y(1,:) = nan(1,5);
    amiD.condition = amiData(iMeasure).condition;
    amiD = amidata(amiD);
    amiD.Sigma_Y = 0.05 * ones(9,5);
    
    % Simulation
    if (nargout == 1)
        amiOptions.sensi = 0;
        sol = simulate_Smith(amiD.t, theta, amiD.condition, amiD, amiOptions);
        J = J + sol.llh;  
    elseif (nargout == 2)
        amiOptions.sensi = 1;
        sol = simulate_Smith(amiD.t, theta, amiD.condition, amiD, amiOptions);
        J = J + sol.llh;
        gradJ = gradJ + sol.sllh;
    else
        error('Call to objective function with too many outputs');
    end
end

% Normalization by the number of experiments
varargout{1} = -J * (datasetSize / numel(miniBatch));
if (nargout > 1)
    varargout{2} = -gradJ * (datasetSize / numel(miniBatch));
end

end
