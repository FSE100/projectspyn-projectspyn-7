
while brick.TouchPressed(1) == 0 
brick.MoveMotor('C', 51);
brick.MoveMotor('D', 51);
end
brick.StopMotor('D')
brick.StopMotor('C');