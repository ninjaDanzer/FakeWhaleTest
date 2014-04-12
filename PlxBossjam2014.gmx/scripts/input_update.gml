/**
    Updates input. Needed for joystick movement. Should be called in End Step by a persistent control object.
    Arguments: None
    Returns: None
*/

var i;
for (i=1; i<2; i++) {
    if (global.joystick_connected[i] && joystick_buttons(i) > 0) {
        var buttons_num = joystick_buttons(i);
        var button;
        for (button = 1; button<buttons_num; button++) {
            global.joystick_states[i, button] = joystick_check_button(i, button);
        }
    }
}
