function ForwardKinematics(j, calcVelocity, calcAcceleration)

global link;

if j == 0
    return;
end

if j ~= 1
    
    i = link(j).mother;
    b = link(i).R * link(j).b;
    
    link(j).p = link(i).p + b;
    link(j).R = link(i).R * Rodrigues(link(j).a, link(j).q);
    
    if calcVelocity
        link(j).v = link(i).v + cross(link(i).w, b);
        link(j).w = link(i).w + link(i).R * (link(j).a * link(j).dq);
    end
    
    if calcAcceleration
        link(j).dv = link(i).dv + cross(link(i).dw, b) + ...
                     cross(link(i).w, cross(link(i).w, b));
        link(j).dw = link(i).dw + link(i).R * (link(j).a * link(j).ddq) + ...
                     cross(link(i).w, link(i).R * (link(j).a * link(j).dq));
    end
    
end

ForwardKinematics(link(j).sister, calcVelocity, calcAcceleration);
ForwardKinematics(link(j).child, calcVelocity, calcAcceleration);