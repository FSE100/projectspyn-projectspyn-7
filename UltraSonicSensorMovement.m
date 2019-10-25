while brick.UltrasonicDist(2) > 40
brick.MoveMotor('C', 50);
brick.MoveMotor('D', 50);
end
brick.StopMotor('D')
brick.StopMotor('C');