// values in game start event now
if (array_contains(global.game_rooms, room) && !instance_exists(obj_enemy_wave_controller)) {
	show_debug_message("hello");
	start_waves(global.waves_amount, global.difficulty + 20 * global.cur_level, global.spawn_boss);
	global.cur_level++;
}
global.pause = false;
