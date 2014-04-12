/**
    Resumes a paused game.
    Arguments: None
    Returns: None
*/

global.just_resumed = true;
room_goto(global.pause_room);
