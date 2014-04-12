/**
    Draws a message, supporting certain control commands.
    Arguments:
        0 - x
        1 - y
        2 - Message
    Returns: None
*/

var messages, message_nr, button_sprites;
var width = 0, height = string_height(argument2);
messages[0] = argument2;
message_nr = 1;

var i;
for (i=0; i<message_nr; i++) {
    var control;
    for (control = 0; control<global.button_codes; control++) {
        var control_pos = string_pos(global.button_code[control, 0], messages[i]);
        if (control_pos != 0) {
            messages[i+1] = string_delete(messages[i], 1, control_pos + string_length(global.button_code[control, 0]) - 1);
            messages[i] = string_copy(messages[i], 1, control_pos - 1);
            button_sprites[i] = global.button_code[control, 1];
            width += sprite_get_width(button_sprites[i]);
            message_nr++;
            break;
        }
    }
    width += string_width(messages[i]);
}

var xx = argument0 - width / 2;
for (i=0; i<message_nr; i++) {
    draw_text(xx, argument1 - height / 2, messages[i]);
    xx += string_width(messages[i]);
    
    if (i < message_nr - 1) {
        draw_sprite_ext(button_sprites[i], 0, xx, argument1 - sprite_get_height(button_sprites[i]) / 2, 1, 1, 0, c_white, draw_get_alpha());
        xx += sprite_get_width(button_sprites[i]);
    }
}
