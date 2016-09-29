function M_exp = Mexp(k, t , q)

% R = Rodrigues(k, t);
R = Rodrigues(k, deg2rad(t));
% d = (ones(3) - R)*q;
d = (eye(3) - R)*q;

M_exp = [
    R(1,1) , R(1,2) , R(1,3) , d(1);
    R(2,1) , R(2,2) , R(2,3) , d(2);
    R(3,1) , R(3,2) , R(3,3) , d(3);
    0      , 0      , 0      , 1   ;
    ];