function dx = model_4(t, x)
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

    % Compute control input based on pre-filter and feedback gains
    u = [-K1 -K2] * x;

    % Compute the derivative of the state vector
    dx = A * x + B * u;
end