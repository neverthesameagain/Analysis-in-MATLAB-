% Clear command window, workspace, and close all figures
clc;
clear all;
close all;

% Initial conditions
iniCon = [0.1; 2];

% Solve the system of differential equations using ode45 moddule
[t, x] = ode45(@model, [0 30], iniCon);

% Create a new figure
figure;

% Plotting the first component of the state vector (x(:,1)) in red
plot(t, x(:, 1), 'r')
hold on;

% Plotting the second component of the state vector (x(:,2)) in blue
plot(t, x(:, 2), 'b')

% Label the x and y axes
xlabel('time')
ylabel('values of x')

% Add a legend indicating the colors and components
legend('x1', 'x2')
