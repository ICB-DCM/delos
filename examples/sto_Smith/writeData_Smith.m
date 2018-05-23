
% Function for writing artificial data and initial concentrations for the
% enzymatic catalysis model.
% The ModelSpec struct is needed to write the data.
% Data is written to matlab files, which can be called to get the data.

function writeData_Smith(nMeasure)


    % Process input
    load('Smith2013_pnom.mat', 'pnom')
    theta = log10(pnom(:));
    sigmaCon = 1;
    sigmaObs = 0.5;
    nObs = 5;

    %% Creation of initial concentrations
    % Writing the initial concentrations using a log-normal distribution
    con0 = (exp(normrnd(0, sigmaCon, 29, nMeasure)));
    
    %% Creation of measurement data
    % Creation of the time vector and the observable function
    tout = 0 : 2.5 : 20;
    nTimepoints = length(tout);
    y_m = nan(length(tout), nObs, nMeasure);
    
    % Simulation of ODE
    ami_options = amioption();
    ami_options.atol = 1e-10;
    ami_options.rtol = 1e-6;
    ami_options.sensi = 0;
   
    for iMeasure = 1 : nMeasure                
        sol = simulate_Smith(tout, theta, con0(:,iMeasure), [], ami_options);
        noise = normrnd(0, sigmaObs, length(nTimepoints), nObs);
        y_m(:,:,iMeasure) = sol.y; % + noise;
    end
    
    %% Create an amidata object out of it and save
    data = struct();
    for iData = 1 : nMeasure
        data(iData).Y = squeeze(y_m(:,:,iData));
        data(iData).condition = con0(:,iData);
        data(iData).t = tout;
        amiData(iData) = amidata(data(iData));
    end
    save('amiData_Smith.mat', 'amiData'); 

end