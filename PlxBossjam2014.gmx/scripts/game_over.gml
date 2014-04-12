/**
    Overs the game. (Heh)
    Arguments: None
    Returns: None
*/

global.game_over_room = room;
ds_queue_clear(global.message_queue);
obj_message_controller.displaying_message = false;

room_goto(rm_game_over);
