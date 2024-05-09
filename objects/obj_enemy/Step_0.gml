function player_damage_collision_handler() {
	if (global.immune_to_damage_timer != 0) { // ignoring the damage
	global.immune_to_damage_timer--;
		return;
	}
	
	if (place_meeting(x, y, obj_player))	{
		global.immune_to_damage_timer = global.default_immune_to_damage_timer;
		screenshake(60, 5);
		global.hp -= count_enemy_damage(damage);
		if (global.hp < 0) {
			death_handler();
		}
	}
}

function action_handler () {
	if (!action_timer) { // pick new action from enemy's action pool
		current_action = actions_pool[irandom_range(0, array_length(actions_pool) - 1)];
		action_timer = irandom_range(current_action.min_len, current_action.max_len);
		action_max_timer = action_timer;
	}
	
	// handle current action
	action_manager();
	action_timer--;
}


action_handler();
player_damage_collision_handler();
movement_handler(lengthdir_x(spd, dir), lengthdir_y(spd, dir));
