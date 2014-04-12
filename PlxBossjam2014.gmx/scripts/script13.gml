/**
    Display slide.
    Arguments:
        0 - x movement
        1 - y movement
        2 - slide sprite
        3 - soundclip
        4 - text
*/

var x_movement = argument0;
var y_movement = argument1;
var slide_sprite = argument2;
var soundclip = argument3;
var display_text = argument4;

sprite_assign(0, slide_sprite)

x += x_movement;
y += y_movement;

