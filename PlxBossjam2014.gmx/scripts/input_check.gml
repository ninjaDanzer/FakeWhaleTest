/**
    Checks whether a key/gamepad_button is currently down.
    Argument:
        0 - Button code, constant
    Returns true or false.
*/

if (keyboard_check_direct(global.button_keyboard[argument0])) {
    return true;
}

return false;
