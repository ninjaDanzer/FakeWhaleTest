/**
    Gets horizontal movement.
    Arguments: None
    Returns: Real value between -1.0 and 1.0, negative is left, positive is right.
*/

var keyboard_x;
keyboard_x = keyboard_check_direct(global.keyboard_right) - keyboard_check_direct(global.keyboard_left);
if (keyboard_x != 0) {
    return keyboard_x;
}

return 0;
