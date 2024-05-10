function generate_wave() {
	create_fly_message(obj_player.x, obj_player.y, "Волна " + string(cur_wave), 120, 0.5)
	
	var cur_points = wave_points
	var enemies_pool = []
	var chosen_enemies = []
	
	for (var i = 0; i < array_length(global.generatable_enemies); i++) {
		var enemy = global.generatable_enemies[i]
		if (enemy.points <= cur_points)
			array_push(enemies_pool, enemy)
	}
	
	while (array_length(enemies_pool) > 0) {
		var en = enemies_pool[irandom(array_length(enemies_pool) - 1)]
		array_push(chosen_enemies, en)
		cur_points -= en.points
		
		enemies_pool = []
		for (var i = 0; i < array_length(global.generatable_enemies); i++) {
			var enemy = global.generatable_enemies[i]
			if (enemy.points <= cur_points)
				array_push(enemies_pool, enemy)
		}
	}
	
	array_foreach(chosen_enemies, function(enemy) {
		var n = get_random_spawn_point();
		show_debug_message(enemy.name);
		instance_create_depth(n.x, n.y, 0, enemy.object)
	})
}

if (instance_number(obj_enemy) == 0) {
	if (cur_wave < waves_amount) {
		if (cur_wave_cooldown <= 0) {
			cur_wave++
			generate_wave()
			cur_wave_cooldown = def_wave_cooldown
		} else {
			cur_wave_cooldown--
		}
	} else {
		var n = get_random_spawn_point()
		create_random_item(n.x, n.y)
		instance_destroy(self)	
	}
}