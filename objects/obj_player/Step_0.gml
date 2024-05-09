function enemy_collision_manager() {
	if (global.immune_to_damage_timer != 0) { // ignoring the damage
	global.immune_to_damage_timer--;
		return;
	}
	
	if (place_meeting(x, y, obj_enemy))	{
		global.immune_to_damage_timer = global.default_immune_to_damage_timer;
		global.hp -= 
	}
}

function projectile_collision_manager() {

}

function movement_manager() {
	if global.move_speed != 0{
	
		if global.roll {
			global.move_speed = global.max_speed;
		}
	
		var _mspeed = global.move_speed + global.roll;
		var _mspeed_diag = (global.move_speed + global.roll) * 0.707; // ~1/sqrt(2)
	
		switch (global.movedir) {
		case 1: {
			movement_handler(_mspeed, 0);
			break;
			}
		case 2: {
			movement_handler(_mspeed_diag, -_mspeed_diag);
			break;
			}
		case 3: {
			movement_handler(0, -_mspeed);
			break;
			}
		case 4: {
			movement_handler(-_mspeed_diag, -_mspeed_diag); 
			break;
			}
		case 5: {
			movement_handler(-_mspeed, 0);
			break;
			}
		case 6: {
			movement_handler(-_mspeed_diag, _mspeed_diag);
			break;
			}
		case 7: {
			movement_handler(0, _mspeed);
			break;
			}
		case 8: {
			movement_handler(_mspeed_diag, _mspeed_diag);
			break;
			}
		}	
	}

	x = round(x);
	y = round(y);
}

movement_manager();
projectile_collision_manager();
enemy_collision_manager();
