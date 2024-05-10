function spawn_portals() {
	for (var i = 0; i < instance_number(obj_portal_spawnpoint); i++) {
		var _current_spawnpoint = instance_find(obj_portal_spawnpoint, i);
		if (irandom_range(0, 3) == 0) continue;
		
		var _diff = global.difficulties[irandom(array_length(global.difficulties) - 1)]
		var _new_portal = instance_create_layer(_current_spawnpoint.x, _current_spawnpoint.y, "floor", obj_portal);
		
		switch (_diff.name) {
			case "blue": {
				_new_portal.sprite_index = spr_blue_portal;
				break;
			}
			case "purple": {
				_new_portal.sprite_index = spr_purple_portal;
				break;
			}
			case "red": {
				_new_portal.sprite_index = spr_red_portal;
				break;
			}
		}
		_new_portal.next_room = global.game_rooms[irandom(array_length(global.game_rooms) - 1)];
		_new_portal.difficulty = irandom_range(_diff.min_points_val, _diff.max_points_val);
		_new_portal.waves_amount = irandom_range(_diff.min_waves_val, _diff.max_waves_val)
	}
}

function spawn_items() {
	var _number = max(1, ceil((global.difficulty - 50) / 50))
	
	for (var i = 0; i < _number; i++) {
		var n = get_random_spawn_point();
		create_random_item(n.x, n.y);
	}
}

function generate_wave() {
	// wave notification
	create_fly_message(window_get_width() / 2, window_get_height() / 2, "Волна " + string(cur_wave), {
		fly_time: 120,
		fly_speed: 0.5,
		font: fnt_title,
		gui: true,
	})

	var cur_points = wave_points
	var enemies_pool = []
	var chosen_enemies = []
	
	// fill enemies pool
	for (var i = 0; i < array_length(global.generatable_enemies); i++) {
		var enemy = global.generatable_enemies[i]
		if (enemy.points <= cur_points)
			array_push(enemies_pool, enemy)
	}
	
	// choose enemies for current wave
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
	
	// spawn enemies
	array_foreach(chosen_enemies, function(enemy) {
		var n = get_random_spawn_point();
		show_debug_message(enemy.name);
		instance_create_depth(n.x, n.y, 0, enemy.object);
	})
}

if (instance_number(obj_enemy) == 0) {
	if (!is_wave_cleared) {
		is_wave_cleared = true
		create_fly_message(window_get_width() / 2, window_get_height() / 2, "Волна зачищена", {
			fly_time: 120,
			fly_speed: 0.5,
			font: fnt_title,
			gui: true,
		})
	}
	if (cur_wave < waves_amount) {
		if (cur_wave_cooldown <= 0) {
			cur_wave++
			generate_wave()
			is_wave_cleared = false
			cur_wave_cooldown = def_wave_cooldown
		} else {
			cur_wave_cooldown--
		}
	} else {
		spawn_items();
		spawn_portals();
		
		instance_destroy(self);
	}
}
