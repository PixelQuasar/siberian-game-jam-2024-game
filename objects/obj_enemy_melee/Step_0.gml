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
			action_move_to_player();
			break;
		}
	}
}

event_inherited();
