distance = brick.UltrasonicDist(3);
display(distance);
%while brick.TouchPressed(1) == 0 && brick.UltrasonicDist(2) < 20
%brick.MoveMotor('C', 50);
%brick.MoveMotor('D', 50);
%end
%brick.StopMotor('D');
%brick.StopMotor('C');
