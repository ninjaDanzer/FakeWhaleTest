/**
    Updates whether joystick exists.
    Arguments: None
    Returns: None
*/

global.joystick_connected[0] = joystick_exists(0);
global.joystick_connected[1] = joystick_exists(1);
