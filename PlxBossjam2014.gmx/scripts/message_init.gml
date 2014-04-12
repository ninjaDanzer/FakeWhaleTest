/**
    Init messages
    Arguments: None
    Returns: None
*/

global.message_queue = ds_queue_create();
global.message_duration = room_speed * 3;

global.button_codes = 0;
add_button_code("<ButtonA>", spr_ButtonA);
add_button_code("<ButtonB>", spr_ButtonB);
add_button_code("<ButtonBack>", spr_ButtonBack);
add_button_code("<ButtonStart>", spr_ButtonStart);
add_button_code("<ButtonX>", spr_ButtonX);
add_button_code("<ButtonY>", spr_ButtonY);
add_button_code("<LShoulder>", spr_LShoulder);
add_button_code("<LThumbstickLR>", spr_LThumbstickLR);
add_button_code("<LThumbstickLRUD>", spr_LThumbstickLRUD);
add_button_code("<LThumbstickPress>", spr_LThumbstickPress);
add_button_code("<LThumbstickUD>", spr_LThumbstickUD);
add_button_code("<LTrigger>", spr_LTrigger);
add_button_code("<RShoulder>", spr_RShoulder);
add_button_code("<RThumbstickLR>", spr_RThumbstickLR);
add_button_code("<RThumbstickLRUD>", spr_RThumbstickLRUD);
add_button_code("<RThumbstickPress>", spr_RThumbstickPress);
add_button_code("<RThumbstickUD>", spr_RThumbstickUD);
add_button_code("<RTrigger>", spr_RTrigger);
