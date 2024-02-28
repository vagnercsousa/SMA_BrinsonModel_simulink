% function Hadi10_Eq17_TempForConstMart()


    clc;
    clear all;
    
    
    m = 1.18e-3; % SMA spring mass [kg]
    Cp = 350; % specific heat [J / kg degC]
    L = 6025; % latent heat [J / kg degC]
    V = 0; % [0, 1, 1.5, 2]; % 0 : 0.5 : 2; % voltage [V]
    RA = 0.7246; % SMA resistance in austenitic phase [Ohm]
%     RM = 0.8197; % SMA resistance in martensitic phase [Ohm]
    R = RA; % SMA resistance [Ohm]
    hc = 150; % convection heat coefficient [J / m^2 degC s]
    Ac = 977e-6; % SMA circunferential area [m^2]
    Tinf = 23; % environmental temperature [degC]
    T0 = 23; % SMA initial temperature [degC]


    tsv = 1; % number of states
    snTimeStep = 1e-3; % time step [s]
    time = 0 : snTimeStep : 30;
    len = length(time); % number of points to compute
    
    
    const1 = 1 / (m * Cp);
    
    mDynMat = - const1 * (hc * Ac);
    
    vStVec = zeros(1, len);
    vStVec(1) = T0; % SMA initial temperature
    
    dotT = zeros(tsv, 4); % for RK4
    
    
    
    dafs = 22;
%     dtfs = dafs + 6;
    lfs = dafs - 4;
    
    set(0, 'DefaultAxesFontSize', dafs); % font size in figures
%     set(0, 'DefaultTextFontSize', dtfs);
    
    figure(1);
    hold all;
    
    
    
    % t, m, T, dVF
    load 'C:\Users\Vagner\Academics\Doctorate\Simulations\Output\ThermalModel\Hadi10_Eq17\ws_T0=23_Freq=1,0_VF=0,5';
    
    
    
    for v = 1 : length(V) % v = V

        for cnt = 2 : len

            % + m * L * dot(VF) [Faulkner et al. 2000]
            const2 = const1 * ((V(v)^2 / R) + (m * L * sdVF(cnt)) + (hc * Ac * Tinf));

            dotT(:,1) = const2 + mDynMat * vStVec(:,cnt-1);
            dotT(:,2) = const2 + mDynMat * (vStVec(:,cnt-1) + dotT(:,1) * snTimeStep / 2);
            dotT(:,3) = const2 + mDynMat * (vStVec(:,cnt-1) + dotT(:,2) * snTimeStep / 2);
            dotT(:,4) = const2 + mDynMat * (vStVec(:,cnt-1) + dotT(:,3) * snTimeStep);

            average_slope = (dotT(:,1) + 2 * (dotT(:,2) + dotT(:,3)) + dotT(:,4)) * snTimeStep / 6;

            vStVec(:,cnt) = vStVec(:,cnt-1) + average_slope;

        end
        
        
        plot(time, vStVec, '--', 'linewidth', 2);
        legstr{v} = sprintf('$\\rm{V} = %.1f\\;\\rm{V}(\\xi=0)$', V(v));
        
    
    end
    
    
    
    xlabel('$t\;\rm{[s]}$', 'interpreter', 'latex');
    ylabel('$T\;\rm{[}{^\circ}\rm{C]}$', 'interpreter', 'latex');
    
    box on;
    grid on;
    
    
    leg = legend(legstr');
    set(leg, 'interpreter', 'latex', 'fontsize', lfs);
    set(leg, 'Location', 'NorthEastOutside');
    
    
%     set(gcf, 'Position', [65, 1, 1302, 696]);
%     set(gca, 'Position', [0.0714, 0.1625, 0.7312, 0.8150]);

set(gcf, 'Position', [65           1        1302         696]);
set(gca, 'Position', [0.0630    0.1625    0.7312    0.8150]);



% plot(st, sT);


% end
