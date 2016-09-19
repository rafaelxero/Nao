function robot = RobotInfo()

global link;
global chain;

NAOstruct;

gdl = length(link) - 1;

robot.id.torso = 1;
robot.id.rf = chain.R_Leg(end);
robot.id.lf = chain.L_Leg(end);
robot.id.rh = chain.R_Arm(end);
robot.id.lh = chain.L_Arm(end);
robot.id.h  = chain.Head(end);

robot.relFloorPos = link(robot.id.lf).e;

robot.m = Mass(1, true);