function Update(var, chain, x)

global link;

for j = 1:length(x)
    switch var
        case 'q'
            link(chain(j)).q = x(j);
        case 'dq'
            link(chain(j)).dq = x(j);
        case 'ddq'
            link(chain(j)).ddq = x(j);
    end
end