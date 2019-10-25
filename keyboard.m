global key
InitKeyboard();
while 1
    pause(0.1);
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
            break;
    end
end