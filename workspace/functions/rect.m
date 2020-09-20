% Funcion cajon o rectangulo
%
% y = rect(x)
%
function y = rect(t)
	y = u(t+0.5) - u(t-0.5);
end