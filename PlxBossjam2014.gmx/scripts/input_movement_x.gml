/**
    Gets horizontal movement.
    Arguments: None
    Returns: Real value between -1.0 and 1.0, negative is left, positive is right.
*/

// Keyboard
var keyboard_x = keyboard_check_direct(global.keyboard_right) - keyboard_check_direct(global.keyboard_left);
if (keyboard_x != 0) {
    return keyboard_x;
}

// Gamepad
if (gamepad_is_supported()) {
    var gamepad_number = gamepad_get_device_count();
    var i;
    for (i=0; i<gamepad_number; i++) {
        if (gamepad_is_connected(i)) {
            var axis_x = gamepad_axis_value(i, gp_axislh);
            if (abs(axis_x) > 0.2)
                return axis_x;
        }
    }
}

return 0;
