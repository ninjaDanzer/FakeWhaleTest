/**
    Add slide.
    Arguments:
        0 - x movement
        1 - y movement
        2 - slide sprite
        3 - text
        4 - x offset
        5 - y offset
        6 - scale
        7 - sound
*/

global.slide_x_movement[global.slides] = argument0;
global.slide_y_movement[global.slides] = argument1;
global.slide_slide_sprite[global.slides] = argument2;
global.slide_display_text[global.slides] = argument3;
global.slide_sprite_x[global.slides] = argument4;
global.slide_sprite_y[global.slides] = argument5;
global.slide_sprite_scale[global.slides] = argument6;
global.slide_audio[global.slides] = argument7;

global.slides++;
