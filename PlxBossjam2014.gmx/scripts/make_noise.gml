/**
    Make noise.
    Arguments:
        0 - x
        1 - y
        2 - volume (distance to be heard in pixels)
*/

var i;
for (i=0; i<instance_number(obj_enemy_parent); i++) {
    var enemy;
    enemy = instance_find(obj_enemy_parent, i);
    if (point_distance(argument0, argument1, enemy.x, enemy.y) < argument2) {
        global.temp_noise_source_x = argument0;
        global.temp_noise_source_y = argument1;
        with (enemy) {
            noise_source_x = global.temp_noise_source_x;
            noise_source_y = global.temp_noise_source_y;
            event_user(3);
        }
    }
}
