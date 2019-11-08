global key
InitKeyboard();
while 1
    pause(0.01);
    switch key
        case 'w' % auto
            while brick.UltrasonicDist(3) < 50 && brick.TouchPressed(1) == 0 
                brick.MoveMotor('C', 50);
                brick.MoveMotor('D', 50);   
            end
            while brick.UltrasonicDist(3) > 70 && brick.TouchPressed(1) == 0
                brick.MoveMotor('C', 45);
                brick.MoveMotor('D', 10);
            end
            if (brick.TouchPressed == 0)
                
            end
                brick.StopMotor('D');
                brick.StopMotor('C');
        case 'uparrow' % move forward
            brick.MoveMotor('C', 50);
            brick.MoveMotor('D', 50);
            
        case 'downarrow' % move backward
            brick.MoveMotor('C', -50);
            brick.MoveMotor('D', -50);
            
        case 'leftarrow' % turn left
            brick.MoveMotor('C', 25);
            brick.MoveMotor('D', 50);
            
        case 'rightarrow' % turn right
            brick.MoveMotor('C', 50);
            brick.MoveMotor('D', 25);

        case 'q' % stop moving
            brick.StopMotor('D');
            brick.StopMotor('C');
            
        case 'o' % Lift up
            brick.MoveMotor('B', -1);
            
        case 'p' % Lift down
            brick.MoveMotor('B', 1);
            
        case 'l' % Stop lift
            brick.StopMotor('B');
            
        case 't' % Stop program
            break;
    end
end