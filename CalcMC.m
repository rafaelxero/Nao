function mc = CalcMC(j, isFirstLink)

global link;

if j == 0
    
    mc = 0;
    
else
    
    mc = link(j).m * (link(j).p + link(j).R * link(j).c);
    
    if isFirstLink
        mc = mc + CalcMC(link(j).child, false);
    else
        mc = mc + CalcMC(link(j).sister, false) + CalcMC(link(j).child, false);
    end
        
end