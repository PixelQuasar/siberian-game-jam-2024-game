function start_waves(waves_amount, wave_points) { 
	show_debug_message(123123);
	var n = instance_create_depth(0, 0, 0, obj_enemy_wave_controller)
	n.waves_amount = waves_amount
	n.wave_points = wave_points
}

global.generatable_enemies = [
	global.enemies.warrior,
	global.enemies.gunner,
	global.enemies.spreader,
]

function get_random_spawn_point() {
	var point = instance_find(obj_enemy_spawn_point, irandom(instance_number(obj_enemy_spawn_point) - 1))
	while (!point.is_active) {
		point = instance_find(obj_enemy_spawn_point, irandom(instance_number(obj_enemy_spawn_point) - 1))
	}
	return point
}