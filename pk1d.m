function theta = pk1d(k,p,q,r)

% Problema
% e(Z_theta) p = q 
% k eje de rotaci?n
% r punto sobre el eje de rotaci?n

u = p - r;
v = q - r;
u_2 = u - (k*k'*u);
v_2 = v - (k*k'*v);
theta = rad2deg(atan2(k'*(cross(u_2,v_2)),dot(u_2,v_2)));