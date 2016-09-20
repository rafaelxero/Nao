clearvars -global
clear
clc

% Comentario 1
global link;

robot = RobotInfo();

link(1).p = [0; 0; 0.33309];

ForwardKinematics(1, false, false);

link(robot.id.lf).p + link(robot.id.lf).R * link(robot.id.lf).e