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

if run_frame <= 3 {
		run_frame += global.max_speed/30;	
} else {
	run_frame = 0;	
}

if global.roll {
	if roll_frame <= 4 {
		roll_frame += 0.3;	
	}
} else {
	roll_frame = 0;	}

	impulse_spd  = max(0, impulse_spd - 1);
	movement_handler(lengthdir_x(impulse_spd, impulse_dir), lengthdir_y(impulse_spd, impulse_dir));

	x = round(x);
	y = round(y);
}

if (global.immune_to_damage_timer > 0) {
	global.immune_to_damage_timer--;
}

if (global.hp <= 0 && !global.player_is_dead) {
	player_death_handler();
}

movement_manager();

if (mouse_check_button_released(mb_left)) {
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	var _new_projectile = instance_create_layer(
		x, y,
		"Instances", obj_player_swing_attack
	);
	_new_projectile.dir = _dir;
} else if (mouse_check_button_released(mb_right)) {
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	var _new_projectile = instance_create_layer(
		x, y,
		"Instances", obj_player_projectile
	);
	_new_projectile.dir = _dir;
}




if keyboard_check_pressed(vk_space) {
	create_random_item(irandom(room_width), irandom(room_height))	
}

