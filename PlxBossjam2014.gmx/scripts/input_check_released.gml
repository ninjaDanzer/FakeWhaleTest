/**
    Checks whether a key/gamepad_button was released since last frame.
    Argument:
        0 - Button code, constant
    Returns true or false.
*/

// Keyboard
if (keyboard_check_released(global.buttons_keyboard[argument0]))
    return true;

// Gamepad
if (gamepad_is_supported()) {
    var gamepad_number = gamepad_get_device_count();
    var i;
    for (i=0; i<gamepad_number; i++) {
        if (gamepad_is_connected(i)) {
            if (gamepad_button_check_released(i, global.buttons_gamepad[argument0]))
                return true;
        }
    }
}

return false;
