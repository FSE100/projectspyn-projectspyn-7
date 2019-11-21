color = brick.ColorCode(2);
brick.MoveMotor('C', 50);
brick.MoveMotor('D', 45);
while brick.MoveMotor('C', 50);
      brick.MoveMotor('D', 45);
if (color == 5) 
end
brick.StopMotor('C');
brick.StopMotor('D');
end