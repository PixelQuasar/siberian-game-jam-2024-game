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
	if run_frame <= 3 {
			run_frame += global.max_speed/20;
	} else {
		run_frame = 0;
	}

	if global.roll {
		if roll_frame <= 4 {
			roll_frame += 0.3;
		}
	} else {
		roll_frame = 0;
	}

	impulse_spd  = max(0, impulse_spd - 1);
	movement_handler(lengthdir_x(impulse_spd, impulse_dir), lengthdir_y(impulse_spd, impulse_dir));

	x = round(x);
	y = round(y);
}


if (global.pause)
	return

if keyboard_check(ord("D")) or keyboard_check(ord("W"))
or keyboard_check(ord("A")) or keyboard_check(ord("S")){
	global.move = true;
} else {
	global.move = false;
}

if !global.roll {
	if keyboard_check(ord("D")) and keyboard_check(ord("W")){
		global.movedir = 2;
	} else if keyboard_check(ord("A")) and keyboard_check(ord("W")){
		global.movedir = 4;
	} else if keyboard_check(ord("A")) and keyboard_check(ord("S")){
		global.movedir = 6;
	} else if keyboard_check(ord("D")) and keyboard_check(ord("S")){
		global.movedir = 8;
	} else if keyboard_check(ord("D")){
		global.movedir = 1;
	}else if keyboard_check(ord("W")){
		global.movedir = 3;
	}else if keyboard_check(ord("A")){
		global.movedir = 5;
	}else if keyboard_check(ord("S")){
		global.movedir = 7;
	}
}
if mouse_check_button_pressed(mb_middle){
	if global.camera_mode {
		global.camera_mode = false;
	} else {
		global.camera_mode = true;
	}
}

if global.move {
	if global.move_speed < global.max_speed{
		global.move_speed += global.max_speed/8;
	} else {
		global.move_speed = global.max_speed
	}
} else if !global.roll {
	if global.move_speed > 0 {
		global.move_speed = lerp(global.move_speed, 0, 0.5);
	}
}

if keyboard_check_pressed(vk_space) and !global.roll{
	global.roll = true;
	alarm[0] = 20;
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
		"Instances", obj_player_projectile
		//"Instances", obj_player_swing_attack
	);
	_new_projectile.dir = _dir;
} else if (mouse_check_button_released(mb_right)) {
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	var _new_projectile = instance_create_layer(
		x, y,
		"Instances", obj_player_swing_attack
		//"Instances", obj_player_projectile
	);
	_new_projectile.dir = _dir;
}




if keyboard_check_pressed(vk_space) {
	create_random_item(irandom(room_width), irandom(room_height))	
}

