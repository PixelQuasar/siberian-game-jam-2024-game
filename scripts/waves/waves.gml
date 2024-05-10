function start_waves(waves_amount, wave_points) { 
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
	return instance_find(obj_enemy_spawn_point, irandom(instance_number(obj_enemy_spawn_point) - 1))
}