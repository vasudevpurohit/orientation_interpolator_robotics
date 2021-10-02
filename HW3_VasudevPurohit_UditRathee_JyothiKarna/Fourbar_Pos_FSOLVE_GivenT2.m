function [F] = Fourbar_Pos_FSOLVE_GivenT2(theta)
L = [4 2 3 6];
theta1 = 30;
theta2 = 80;
theta1 = (theta1*pi)/180;
theta2 = (theta2*pi)/180;
F(1) = L(1)*cos(theta1) + L(4)*cos(theta(1,2)) - L(2)*cos(theta2) - L(3)*cos(theta(1,1));
F(2) = L(1)*sin(theta1) + L(4)*sin(theta(1,2)) - L(2)*sin(theta2) - L(3)*sin(theta(1,1));
end