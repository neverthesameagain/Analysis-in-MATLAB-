% Given parameters
m = 1; % mass (kg)
k = 1; % spring constant (N/m)
b = 0.6; % damping coefficient (chosen for underdamped system)

% Define the transfer function
num = 1;
den = [m, b, k];
sys = tf(num, den);

% Simulate the response to unit step input
t = 0:0.01:20; % Time from 0 to 20 seconds with 0.01s intervals
unit_step_response = step(sys, t);

% Plot the response
figure;
plot(t, unit_step_response);
title('Unit Step Response of Mechanical System');
xlabel('Time (s)');
ylabel('Displacement');
grid on;

% Calculate time domain parameters
% Settling time
[y_ss, t_ss] = min(abs(unit_step_response - 1));
settling_time = t(t_ss);
% Rise time
idx_10 = find(unit_step_response >= 0.1, 1, 'first');
idx_90 = find(unit_step_response >= 0.9, 1, 'first');
rise_time = t(idx_90) - t(idx_10);
% Delay time (negligible for underdamped systems)
delay_time = 0;
% Percentage overshoot
zeta=0.3;
percent_overshoot = exp(-zeta * pi / sqrt(1 - zeta^2)) * 100;

% Display time domain parameters
fprintf('Settling time: %.4f s\n', settling_time);
fprintf('Rise time: %.4f s\n', rise_time);
fprintf('Delay time: %.4f s\n', delay_time);
fprintf('Percentage overshoot: %.4f%%\n', percent_overshoot);
