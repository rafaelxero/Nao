% function [theta_1 theta_2] = pk2d(k1,k2,p,q,r)
function [theta_1 theta_2] = pk2d(k1,k2,p,q,r,h)

% h (+1 o -1)

u = p - r;
v = q - r;
alpha = ((k1'*k2)*(k2'*u) - k1'*v) / ((k1'*k2)^2 - 1);
beta = ((k1'*k2)*(k1'*v) - k2'*u) / ((k1'*k2)^2 - 1);
% gamma = sqrt(((norm(u))^2 - alpha^2 - beta^2 - 2*alpha*beta*k1'*k2) / (norm(cross(k1,k2))^2));
gamma = h * sqrt(((norm(u))^2 - alpha^2 - beta^2 - 2*alpha*beta*k1'*k2) / (norm(cross(k1,k2))^2));

z = alpha*k1 + beta*k2 + gamma*(cross(k1,k2));
c = z + r;

theta_2 = pk1d(k2,p,c,r);
% theta_1 = -1 * (pk1d(k1,c,q,r));
theta_1 = pk1d(k1,c,q,r);