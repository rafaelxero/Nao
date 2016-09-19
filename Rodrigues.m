function R = Rodrigues(k, t)

kx = k(1);  ky = k(2);  kz = k(3);
c = cos(t); s = sin(t); v = 1 - c;

R = [kx^2 * v + c,         kx * ky * v - kz * s, kx * kz * v + ky * s;
     kx * ky * v + kz * s, ky^2 * v + c,         ky * kz * v - kx * s;
     kx * kz * v - ky * s, ky * kz * v + kx * s, kz^2 * v + c];