% Given parameters
m = 1; % mass (kg)
k = m; % spring constant (N/m)
b = 4; % damping coefficient (chosen)

% Define the transfer function
num = 1;
den = [m, b, k];
sys = tf(num, den);

% Define time vector
t = 0:0.01:50; % Time from 0 to 50 seconds with 0.01s intervals

% System responses to different excitations
unit_step_response = step(sys, t);
unit_ramp_response = lsim(sys, t, t);
unit_impulse_response = impulse(sys, t);

% Compute steady-state errors
ss_error_unit_step = 1 - unit_step_response(end); % Steady-state error for unit step
ss_error_unit_ramp = t(end) - unit_ramp_response(end); % Steady-state error for unit ramp
ss_error_unit_impulse = unit_impulse_response(end); % Steady-state error for unit impulse

% Display the steady-state errors
fprintf('Steady state error for Unit Step Input: %.4f\n', ss_error_unit_step);
fprintf('Steady state error for Unit Ramp Input: %.4f\n', ss_error_unit_ramp);
fprintf('Steady state error for Unit Impulse Input: %.4f\n', ss_error_unit_impulse);
