function action_manager() {
		switch current_action.name {
		case "ACTION_IDLE": {
			break;
		}
		case "ACTION_SHOOT": {
			action_shoot();
			break;
		}
		case "ACTION_MOVE_RANDOM": {
			action_move_random();
			break;
		}
		case "ACTION_MOVE_FROM_PLAYER": {
			action_move_from_player();
			break;
		}
	}
}

event_inherited();

