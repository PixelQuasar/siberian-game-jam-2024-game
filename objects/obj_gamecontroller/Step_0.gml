//controls (stupid)

if (keyboard_check(ord("E"))) {
	global.e_pressed = true;
}
else {
	global.e_pressed = false;
}

if (!instance_exists(obj_item) && !instance_exists(obj_enemy_wave_controller) && !global.pause) {
	start_waves(3, 100 + 20 * cur_level)
	cur_level++
} 