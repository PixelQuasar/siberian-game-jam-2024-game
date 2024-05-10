function player_handler() {
	if (!instance_exists(obj_player)) return;
	if (point_distance(x, y, obj_player.x, obj_player.y) < 48) {
		is_player_nearby = true;
	} 
	else {
		is_player_nearby = false;
	}
	
	if (global.f_pressed && is_player_nearby) {
		global.difficulty = difficulty;
		room_goto(next_room);
	}
}

player_handler();
