
while brick.TouchPressed(1) == 0 
brick.MoveMotor('C', 50);
brick.MoveMotor('D', 50);
end
brick.StopMotor('D')
brick.StopMotor('C');