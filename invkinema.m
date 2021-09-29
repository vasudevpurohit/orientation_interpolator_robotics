%% Defining the inverse motion kinematic equations

function [theta1,theta2] = invkinema(L,xe,ye,sigma)
A = -2*xe*L(1);
B = -2*ye*L(1);
C = ((xe).^2) + ((ye).^2) + ((L(1))^2) - ((L(2))^2);

    if (sigma == 1)
        theta1 = 2*atan2d(((-2*B)+ sqrt(((2*B).^2)-(4*(((C).^2)-((A).^2))))),(2*(C-A)));
        theta2 = atan2d((ye-(L(1)*sind(theta1))),(xe-(L(1)*cosd(theta1))));       
    elseif (sigma == -1)
        theta1 = 2*atan2d(((-2*B)- sqrt(((2*B).^2)-(4*(((C).^2)-((A).^2))))),(2*(C-A)));
        theta2 = atan2d((ye-(L(1)*sind(theta1))),(xe-(L(1)*cosd(theta1))));
    end
end