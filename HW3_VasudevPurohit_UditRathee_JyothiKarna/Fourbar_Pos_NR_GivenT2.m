function [Theta] = Fourbar_Pos_NR_GivenT2(L,theta)

theta1 = theta(1);
theta2 = theta(2);
theta1 = (theta1*pi)/180;
theta2 = (theta2*pi)/180;
theta4 = ones(1,1);
theta3 = zeros(1,1);
theta_calc = [theta3;theta4];
iter = 1;

while iter < 1000
    df = [[L(3)*sin(theta3) -L(4)*sin(theta4)];
          [-L(3)*cos(theta3) L(4)*cos(theta4)]];
    C1 = L(1)*cos(theta1) + L(4)*cos(theta4) - L(2)*cos(theta2) - L(3)*cos(theta3);
    C2 = L(1)*sin(theta1) + L(4)*sin(theta4) - L(2)*sin(theta2) - L(3)*sin(theta3);
    C = [C1;C2];
    theta_calc = theta_calc - df\C;
    theta3  = theta_calc(1,1);
    theta4  = theta_calc(2,1);
    iter = iter + 1;
end

Theta = theta_calc;
end