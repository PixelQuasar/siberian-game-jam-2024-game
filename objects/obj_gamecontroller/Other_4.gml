// values in game start event now
if (array_contains(global.game_rooms, room) && !instance_exists(obj_enemy_wave_controller)) {
	show_debug_message("hello");
	start_waves(max(ceil(global.difficulty / 90), 3), global.difficulty + 20 * global.cur_level);
	global.cur_level++;
}
