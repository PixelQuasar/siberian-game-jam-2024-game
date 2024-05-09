// Inherit the parent event

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

function action_move_player () {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd;
		var _player_x = instance_exists(obj_player) ? obj_player.x : x;
		var _player_y = instance_exists(obj_player) ? obj_player.y : y;
		dir = point_direction(x, y, _player_x, _player_y);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
		dir = 0;
	}
	else { // action on-update
		// empty
	}
}

function action_move_rush () {
	if (action_timer == action_max_timer) { // first frame of an action
		spd = default_spd * 2.5;
		var _player_x = instance_exists(obj_player) ? obj_player.x : x;
		var _player_y = instance_exists(obj_player) ? obj_player.y : y;
		dir = point_direction(x, y, _player_x, _player_y);
	}
	else if (action_timer == 1) { // last frame of an action
		spd = 0;
		dir = 0;
		action_max_timer = IDLE_ACTION.min_len; // time to rest after productive rush!
		action_timer = IDLE_ACTION.min_len;
		current_action = IDLE_ACTION;
	}
	else { // action on-update
		spd *= 0.97;
		if (spd < 0.01) action_timer = 2;
	}
}

function action_manager() {
		switch current_action.name {
		case "ACTION_IDLE": {
			break;
		}
		case "ACTION_RUSH": {
			action_move_rush();
			break;
		}
		case "ACTION_MOVE_RANDOM": {
			action_move_random();
			break;
		}
		case "ACTION_MOVE_PLAYER": {
			action_move_random();
			break;
		}
	}
}

event_inherited();
