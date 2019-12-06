while 1
    brick.SetColorMode(1, 2); %Set Color Sensor connected on port 1 to Color Code Mode
    color = brick.ColorCode(1);
    brick.MoveMotor('C', 30)
    brick.MoveMotor('D', 30)
    %print color of object

    if (color == 5)
        brick.StopMotor('C')
        brick.StopMotor('D')
        pause(3)
        brick.MoveMotor('C', 30)
        brick.MoveMotor('D', 30)
        pause(2)
    end
end