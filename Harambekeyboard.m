global key
InitKeyboard();
while 1
    pause(0.01);
    switch key
        case 'uparrow'
            brick.MoveMotor('C', 50);
            brick.MoveMotor('D', 50);
        case 'downarrow'
            brick.MoveMotor('C', -50);
            brick.MoveMotor('D', -50);
        case 'leftarrow'
            brick.MoveMotor('C', 25);
            brick.MoveMotor('D', 50);
        case 'rightarrow'
            brick.MoveMotor('C', 50);
            brick.MoveMotor('D', 25);
        case 0
            pause(0.1);
        case 'q'
            brick.StopMotor('D');
            brick.StopMotor('C');
        case 'o'
            brick.MoveMotor('B', 1);
        case 'p'
            brick.MoveMotor('B', -1);    
        case 'l'
            brick.StopMotor('B');
        case 't'
            break;
    end
end