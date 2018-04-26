function [y, dy, ddy] = llhRosenbrock(x)

    a = 1;
    b = 100;
    
    y = (a - x(1))^2 + b * (x(2) - x(1)^2)^2;
    dy = [2 * (x(1) - a) - 4 * b * x(1) * (x(2) - x(1)^2); ...
        2 * b * (x(2) - x(1)^2)];
    ddy = [2*x(1) - 4*b*x(2) + 12*b*x(1)^2, -4*b*x(1); ...
        -4*b*x(1), 2*b];
end