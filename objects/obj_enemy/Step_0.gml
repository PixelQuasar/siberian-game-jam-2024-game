function action_handler () {
	if (!action_timer) { // pick new action from enemy's action pool
		current_action = actions[irandom_range(0, array_length(actions) - 1)];
		action_timer = irandom_range(current_action.min_len, current_action.max_len);
		action_max_timer = action_timer;
	}
	
	// handle current action
	action_manager();
	action_timer--;
}

action_handler();
movement_handler(lengthdir_x(spd, dir), lengthdir_y(spd, dir));
