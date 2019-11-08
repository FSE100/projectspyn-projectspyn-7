brick.SetColorMode(2, 2);
color = brick.ColorCode(2);
display(color);
while color == 7
brick.MoveMotor('C', 50);
brick.MoveMotor('D', 50);
end
brick.StopMotor('D');
brick.StopMotor('C');