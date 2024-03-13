% Given parameters
m = 1; % mass (kg)
k = 1; % spring constant (N/m)
b = 1.5; % damping coefficient (chosen for underdamped system)

% Define the transfer function
num = 1;
den = [m, b/2, k];
sys = tf(num, den);

% Plot pole locations
pzmap(sys);
title('Pole-Zero Map');
xlabel('Real Part');
ylabel('Imaginary Part');

% Calculate damping ratio
omega_n = sqrt(k/m);
damping_ratio = b / (2 * sqrt(m * k));

fprintf('Damping ratio: %.2f\n', damping_ratio);
