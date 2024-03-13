% Clear command window and workspace
clc;
clear all;

% System parameters
j = 0.01;
b = 0.1;
k = 0.01;
r = 1;
l = 0.5;

% Feedback gains
K = [10 10];

% System matrices
A = [(-b/j) (k/j) ; (-k/l) (-r/l)];
B = [0 ; (1/l)];

% Compute the closed-loop system eigenvalues
closedLoopEigenvalues = eig(A - B * K);

% Display the eigenvalues in the command window
disp('Closed-loop system eigenvalues:');
disp(closedLoopEigenvalues);
