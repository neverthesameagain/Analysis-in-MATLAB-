function dx = model_5(t, x)
    % Constants
    j = 0.01;
    b = 0.1;
    k = 0.01;
    r = 1;
    l = 0.5;

    % Feedback gains (initialized to zero)
    K1 = 0;
    K2 = 0;

    % System matrices
    A = [(-b/j) (k/j) ; (-k/l) (-r/l)];
    B = [0 ; (1/l)];
    C = [1 0];
    D = 0;

    % Define state-space system
    SYS = ss(A - B*[K1 K2], B, C, D);

    % Compute pre-filter gain to achieve unity DC gain
    Kr = 1 / dcgain(SYS);

    % Compute control input based on pre-filter and feedback gains
    u = [-K1 -K2] * x + [Kr 0] * [1 ; 0];

    % Compute the derivative of the state vector
    dx = A * x + B * u;
end
