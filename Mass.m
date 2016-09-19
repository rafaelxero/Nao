function m = Mass(j, isFirstLink)

global link;

if j == 0
    
    m = 0;
    
else
    
    if isFirstLink
        m = link(j).m + Mass(link(j).child, false);
    else
        m = link(j).m + Mass(link(j).sister, false) + Mass(link(j).child, false);
    end
    
end