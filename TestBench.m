clearvars -global
clear
clc

global link; %hernia

robot = RobotInfo();

Update('q', chain.R_Leg, [ 0; 0; -26; 50; -24; 0] pi/180);

link(1).p = [0; 0; 0.33309];

ForwardKinematics(1, false, false);

link(robot.id.lf).p + link(robot.id.lf).R * link(robot.id.lf).e