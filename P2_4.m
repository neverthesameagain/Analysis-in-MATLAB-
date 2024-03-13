% Given parameters
m = 1; % mass (kg)
k = 1; % spring constant (N/m)
b = 0; % damping coefficient (zero for undamped system)

% Define the transfer function
num = 1;
den = [m, b, k];
sys = tf(num, den);

% Define time vector
t = 0:0.01:20; % Time from 0 to 20 seconds with 0.01s intervals

% System response to unit step input
unit_step_response = step(sys, t);

% Plot system response
plot(t, unit_step_response);
title('System Response to Unit Step Input (Undamped System)');
xlabel('Time (s)');
ylabel('Displacement');
grid on;
