brick.SetColorMode(1, 2);  % Set Color Sensor connected to Port 1 to Color Code Mode

color_rgb = brick.ColorCode(1);  % Get Color on port 1.
disp((color));
%print color of object