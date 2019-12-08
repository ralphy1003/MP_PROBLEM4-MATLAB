%PROBLEM 4-MATLAB
function PROB4(HEIGHT, VELO, THETA, Ax, Ay)
A =(sqrt((VELO*sind(THETA))^2-2*Ay*HEIGHT) - VELO*sind(THETA))/Ay;
if A<=0 
    A=(-sqrt(abs(VELO*sind(THETA))^2-2*Ay*HEIGHT) - VELO*sind(THETA))/Ay; 
end
if HEIGHT < 0 && Ay == 0
    error('VALUE INVALID!PLEASE ENTER A VALUE FOR HEIGHT AND Ay') 
elseif HEIGHT < 0
    error('Invalid! Please input Height.')
elseif Ay == 0
    error("VALUE INVALID!ZERO Ay DOESN'T PRODUCE FREE FALL-MOTION!")
end
t=0:0.005:A;
a = VELO.*cosd(THETA).*t+(1./2).*Ax.*t.^2;
b = HEIGHT + VELO.*sind(THETA).*t+(1./2).*Ay.*t.^2;


plot(a,b,"ko")
title('PROBLEM 4')
grid on
xlabel('Horizontal Range')
ylabel('HEIGHT')