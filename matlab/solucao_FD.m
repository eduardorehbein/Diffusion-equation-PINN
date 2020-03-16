clear all
clc

delta_x = 1/160;
delta_t = 1/(64e3);
courant = delta_t/(delta_x^2);

x = 0:delta_x:1;
t = 0:delta_t:0.2;
s = zeros(length(x), length(t));
gabarito = zeros(length(x), length(t));

% u_x_0 = zeros(1, length(t));
u_x_1 = fi_1(t);
u_t_0 = g(x);

s(:,1) = u_t_0';
s(length(x),:) = u_x_1;

for n = 1:(length(t) - 1)
   for l = 2:(length(x) - 1)
       s(l,n+1) = s(l,n) + courant*(s(l-1,n) - 2*s(l,n) + s(l+1,n));
   end
end

for n = 1:length(t)
   for l = 1:length(x)
       gabarito(l,n) = u(x(l),t(n));
   end
end

erro = s - gabarito;
disp('Norma do erro:')
disp(norm(erro))

mesh(s)
hold on
mesh(gabarito)