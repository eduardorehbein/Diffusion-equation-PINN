function saida = u(x,t)
    saida = exp(-((pi^2)*t)/4)*sin((pi*x)/2) + (1/2)*exp(-4*(pi^2)*t)*sin(2*pi*x);
end

