/**
    Pauses the game.
    Arguments: None
    Returns: None
*/

global.pause_room = room;
global.pause_room_persistent = room_persistent;
room_persistent = true;

instance_deactivate_object(obj_message_controller);

room_goto(rm_pause);
