/**
    Resumes a paused game.
    Arguments: None
    Returns: None
*/

room_goto(global.pause_room);
room_persistent = global.pause_room_persistent;
