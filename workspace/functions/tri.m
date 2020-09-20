% funcion triangulo
% utiliza u(t)
%
% y = { t, t < 1
%     { 0, t <= 0
%
% Tambien es la integral en -inf a t de el escalon
%
%
function y = tri(t)
	y = t .* u(t);
end