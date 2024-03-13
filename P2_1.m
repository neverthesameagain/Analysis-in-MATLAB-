% Given parameters
m = 1; % mass (kg)
k = 1; % spring constant (N/m)
b = 4; % damping coefficient (chosen)

% Define the transfer function
num = 1;
den = [m, b, k];
sys = tf(num, den);

% Define time vector
t = 0:0.01:10; % Time from 0 to 10 seconds with 0.01s intervals

% System responses to different excitations
unit_step_response = step(sys, t);
unit_ramp_response = lsim(sys, t, t);
unit_impulse_response = impulse(sys, t);

% Plot system responses
figure;
subplot(3,1,1);
plot(t, unit_step_response);
title('System Response to Unit Step Input');
xlabel('Time (s)');
ylabel('Displacement');
grid on;

subplot(3,1,2);
plot(t, unit_ramp_response);
title('System Response to Unit Ramp Input');
xlabel('Time (s)');
ylabel('Displacement');
grid on;

subplot(3,1,3);
plot(t, unit_impulse_response);
title('System Response to Unit Impulse Input');
xlabel('Time (s)');
ylabel('Displacement');
grid on;
