function action_move_random () {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd;
		dir = irandom_range(0, 360);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
		dir = 0;
	}
	else { // action on-update
		// empty
	}
}

function action_move_to_player () {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd * 1.2;
		var _player_x = instance_exists(obj_player) ? obj_player.x : x;
		var _player_y = instance_exists(obj_player) ? obj_player.y : y;
		dir = point_direction(x, y, _player_x, _player_y);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
	}
	else { // action on-update
		// empty
	}
}

function action_move_from_player () {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd;
		var _player_x = instance_exists(obj_player) ? obj_player.x : x;
		var _player_y = instance_exists(obj_player) ? obj_player.y : y;
		dir = point_direction(_player_x, _player_y, x, y);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
	}
	else { // action on-update
		// empty
	}
}

function action_move_rush() {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd * 4;
		var _player_x = instance_exists(obj_player) ? obj_player.x : x;
		var _player_y = instance_exists(obj_player) ? obj_player.y : y;
		dir = point_direction(x, y, _player_x, _player_y);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
		action_max_timer = global.IDLE_ACTION.min_len; // time to rest after productive rush!
		action_timer = global.IDLE_ACTION.min_len;
		current_action = global.IDLE_ACTION;
	}
	else { // action on-update
		spd *= 0.97;
		if (spd < 0.01) action_timer = 2;
	}
}

function action_shoot() {
	if (action_timer == action_max_timer) { // first frame of an action
		if (!instance_exists(obj_player)) return;
	
		var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	
		var _new_projectile = instance_create_layer(
			x, y,
			"Instances", obj_enemy_gunner_projectile
		);
		_new_projectile.dir = _dir;
	}
	else if (action_timer == 1) { // last frame of an action
		// EMPTY
	}
	else { // action on-update
		// EMPTY
	}
	
}
