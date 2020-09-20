% Funcion escalon u(t)
% utiliza funcion signo
% 
% y = { 1, t > 0
%   = { 0, t < 0 
%
function y = u(t)
    y = (sign(t) + 1) / 2;
end