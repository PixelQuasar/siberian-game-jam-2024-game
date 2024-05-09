function check_player() {
	if (!instance_exists(obj_player)) return;
	
	var _distance = point_distance(x, y, obj_player.x, obj_player.y)
	
	if (_distance < 32) {
		anim_timer++;
		if (anim_timer == 100) anim_timer = 0;
		is_active = true;
	} else {
		is_active = false;
	}
}

check_player();