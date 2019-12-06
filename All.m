global key
InitKeyboard();
brick.SetColorMode(1, 2); %Set Color Sensor connected on port 1 to Color Code Mode
while 1
    pause(0.01);
    switch key
        case 'w' % auto
            while 1
            while brick.UltrasonicDist(3) < 50 && brick.TouchPressed(2) == 0
                brick.MoveMotor('C', 50); %Forward
                brick.MoveMotor('D', 50);
                color_rgb(1) = brick.ColorCode(1); %Get Color on port 2
                if ( color_rgb(1) == 5)
                brick.StopMotor('C')
                brick.StopMotor('D')
                pause(4)
                brick.playTone(200, 800, 500);
                brick.MoveMotor('C', 30) %Forward
                brick.MoveMotor('D', 30)
                pause(2)
                end
                if (color_rgb(1) == 2 || color_rgb(1) == 3 )
                brick.playTone(200, 800, 500);
                brick.StopMotor('D');
                brick.StopMotor('C');
                pause(50);
                end
            end
            if brick.UltrasonicDist(3) > 70 && brick.TouchPressed(2) == 0
                brick.MoveMotor('C', 30); %Right
                brick.MoveMotor('D', 0);
                pause(2.5)
                brick.MoveMotor('C', 30); %Forward
                brick.MoveMotor('D', 30);
                pause(3)
            end
            if brick.TouchPressed(2) == 1
                brick.MoveMotor('C', -30); %Backward
                brick.MoveMotor('D', -30);
                pause(2)
                color_rgb(1) = brick.ColorCode(1); %Get Color on port 2
                if color_rgb(1) == 2 || color_rgb(1) == 3
                    brick.StopMotor('D');
                    brick.StopMotor('C');
                    pause(50);
                end
                brick.MoveMotor('C', 0); %Left
                brick.MoveMotor('D', 30);
                pause(2.9)
            end
                brick.StopMotor('D');
                brick.StopMotor('C'); 
            end
        case 'uparrow' % move forward
            brick.MoveMotor('C', 30);
            brick.MoveMotor('D', 30);
            
        case 'downarrow' % move backward
            brick.MoveMotor('C', -30);
            brick.MoveMotor('D', -30);
            
        case 'leftarrow' % turn left
            brick.MoveMotor('C', 0);
            brick.MoveMotor('D', 30);
            
        case 'rightarrow' % turn right
            brick.MoveMotor('C', 30);
            brick.MoveMotor('D', 0);

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