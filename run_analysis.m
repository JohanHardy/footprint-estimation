clc;
close all;
clear all;

%%                           FOOTPRINT ANALYSIS
% Input of the analysis
E = 0:5:15;   % Setting up elevation [deg]
alt = 650;    % Worst case altitude [km]


r   = zeros(1, length(E));
l   = zeros(1, length(E));
phi = zeros(1, length(E));

% Compute footprint
i = 1;
for e = E
    [r(i) l(i) phi(i)] = footprint (alt, e*pi/180);
    i = i+1;
end

% Display results
i = 1;
for e = E
    fprintf('For elevation of %.3f [deg]:\n', e);
    fprintf('   coverage radius (r) : %.2f [km]\n', r(i));
    fprintf('   coverage chord  (l) : %.2f [km]\n', l(i));
    fprintf('   geocentric semi-angle (phi) : %.3f [deg]\n', phi(i)*180/pi);
    fprintf('\n');
    i = i+1;
end