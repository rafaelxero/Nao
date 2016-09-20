function com = CalcCom(j, isFirstLink)

global link;

M = Mass(j, isFirstLink);
MC = CalcMC(j, isFirstLink);
com = MC / M;