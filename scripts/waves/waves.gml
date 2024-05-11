function start_waves(waves_amount, wave_points, spawn_boss = false) { 
	show_debug_message(123123);
	var n = instance_create_depth(0, 0, 0, obj_enemy_wave_controller)
	n.waves_amount = waves_amount
	n.wave_points = wave_points
	n.spawn_boss = spawn_boss
}

global.generatable_enemies = [
	global.enemies.warrior,
	global.enemies.gunner,
	global.enemies.spreader,
	global.enemies.tower,
	global.enemies.summoner,
]

function get_random_spawn_point() {
	var point = instance_find(obj_enemy_spawn_point, irandom(instance_number(obj_enemy_spawn_point) - 1))
	while (!point.is_active) {
		point = instance_find(obj_enemy_spawn_point, irandom(instance_number(obj_enemy_spawn_point) - 1))
	}
	return point
}

global.difficulties = [
	{
		name: "blue",
		min_points_val: 50,
		max_points_val: 200,
		min_waves_val: 2,
		max_waves_val: 4,
	},
	{
		name: "purple",
		min_points_val: 150,
		max_points_val: 300,
		min_waves_val: 2,
		max_waves_val: 4,
	},
	{
		name: "red",
		min_points_val: 250,
		max_points_val: 300,
		min_waves_val: 2,
		max_waves_val: 4,
	}
]

global.game_rooms = [rm_room_1, rm_room_2, rm_room_3]