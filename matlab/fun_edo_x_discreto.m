function dydt = fun_edo_x_discreto(t, y)
    delta_x = 1/13;
    dydt = zeros(12, 1);
    dydt(1) = (y(2) - 2*y(1))/(delta_x^2);
    dydt(2) = (y(1) - 2*y(2) + y(3))/(delta_x^2);
    dydt(3) = (y(2) - 2*y(3) + y(4))/(delta_x^2);
    dydt(4) = (y(3) - 2*y(4) + y(5))/(delta_x^2);
    dydt(5) = (y(4) - 2*y(5) + y(6))/(delta_x^2);
    dydt(6) = (y(5) - 2*y(6) + y(7))/(delta_x^2);
    dydt(7) = (y(6) - 2*y(7) + y(8))/(delta_x^2);
    dydt(8) = (y(7) - 2*y(8) + y(9))/(delta_x^2);
    dydt(9) = (y(8) - 2*y(9) + y(10))/(delta_x^2);
    dydt(10) = (y(9) - 2*y(10) + y(11))/(delta_x^2);
    dydt(11) = (y(10) - 2*y(11) + y(12))/(delta_x^2);
    dydt(12) = (y(11) - 2*y(12) + fi_1(t))/(delta_x^2);
end

