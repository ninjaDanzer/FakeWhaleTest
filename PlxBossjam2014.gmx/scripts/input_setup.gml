/**
    Sets up default keybindings. Needs to be called before other input_-functions.
    Arguments: None
    Returns: None
*/

global.buttons_keyboard[BUTTON_ACTION] = vk_space;
global.buttons_keyboard[BUTTON_CROUCH] = vk_lcontrol;
global.buttons_keyboard[BUTTON_PAUSE] = vk_f12;

global.buttons_gamepad[BUTTON_ACTION] = gp_face1;
global.buttons_gamepad[BUTTON_CROUCH] = gp_face2;
global.buttons_gamepad[BUTTON_PAUSE] = gp_start;

global.buttons_joystick[BUTTON_ACTION] = 1;
global.buttons_joystick[BUTTON_CROUCH] = 2;
global.buttons_joystick[BUTTON_PAUSE] = 3;

global.keyboard_left = ord('A');
global.keyboard_right = ord('D');
