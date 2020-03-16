clear all
clc

delta_x = 1/13;
delta_t = 1/64e3;

x = 0:delta_x:1;

conds = g(x(2:13))';
[t, edo_sol] = ode45(@fun_edo_x_discreto, [0 0.2], conds);
t = t';
edo_sol = edo_sol';
s = [zeros(1, length(t)); edo_sol; fi_1(t)];

gabarito = zeros(length(x), length(t));
for n = 1:length(t)
   for k = 1:length(x)
       gabarito(k,n) = u(x(k),t(n));
   end
end

erro = s - gabarito;
disp('Norma do erro:')
disp(norm(erro))

mesh(s)
hold on
mesh(gabarito)