%function y = u(t)
% 0, t < 0 
% 1/2, t = 0
% 1, t > 0

function y = u(t)
    y = (sign(t) + 1) / 2;