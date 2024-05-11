function player_handler() {
	if (!instance_exists(obj_player)) return;
	if (point_distance(x, y, obj_player.x, obj_player.y) < 48) {
		is_player_nearby = true;
	} 
	else {
		is_player_nearby = false;
	}
	
	if (global.f_pressed && is_player_nearby) {
		if (type == "red") progress++;
		global.difficulty = difficulty;
		global.waves_amount = waves_amount;
		global.spawn_boss = spawn_boss;
		room_goto(next_room);
	}
}

image_angle++;

player_handler();
