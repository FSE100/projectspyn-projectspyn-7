global key
InitKeyboard();
brick.SetColorMode(1, 4); %Set Color Sensor connected on port 1 to Color Code Mode
color_rgb = brick.ColorRGB(1); %Get Color on port 2
while 1
    pause(0.01);
    switch key
        case 'w' % auto
            while 1
            while brick.UltrasonicDist(3) < 50 && brick.TouchPressed(2) == 0
                brick.MoveMotor('C', 37);
                brick.MoveMotor('D', 30);
                 if (color_rgb(1)>= 90)
                brick.StopMotor('C')
                brick.StopMotor('D')
                pause(2)
                brick.MoveMotor('C', 37)
                brick.MoveMotor('D', 30)
                pause(2)
                end
            end
            if brick.UltrasonicDist(3) > 70 && brick.TouchPressed(2) == 0
                brick.MoveMotor('C', 40);
                brick.MoveMotor('D', -10);
                pause(5)
                brick.MoveMotor('C', 37);
                brick.MoveMotor('D', 30);
                pause(5)
            end
            if brick.TouchPressed(2) == 1
                brick.MoveMotor('C', -37);
                brick.MoveMotor('D', -30);
                pause(3)
                if color_rgb(2) < color_rgb(1) + color_rgb(3) ||(color_rgb(1)+ color_rgb(2) < color_rgb(3))
                    brick.StopMotor('D');
                    brick.StopMotor('C');
                    pause(50)
                end
                brick.MoveMotor('C', -10);
                brick.MoveMotor('D', 40);
                pause(5)
                break;
            end
                brick.StopMotor('D');
                brick.StopMotor('C'); 
            end
        case 'uparrow' % move forward
            brick.MoveMotor('C', 37);
            brick.MoveMotor('D', 30);
            
        case 'downarrow' % move backward
            brick.MoveMotor('C', -37);
            brick.MoveMotor('D', -30);
            
        case 'leftarrow' % turn left
            brick.MoveMotor('C', -10);
            brick.MoveMotor('D', 30);
            
        case 'rightarrow' % turn right
            brick.MoveMotor('C', 40);
            brick.MoveMotor('D', -10);

        case 'q' % stop moving
            brick.StopMotor('D');
            brick.StopMotor('C');
            
        case 'o' % Lift up
            brick.MoveMotor('B', -1);
            pause(0.1)
            
        case 'p' % Lift down
            brick.MoveMotor('B', 1);
            pause(0.1)
        case 'l' % Stop lift
            brick.StopMotor('B');
            
        case 't' % Stop program
            break;
    end
end